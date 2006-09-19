/*
  main.cpp --  A very simple Max external object.  
  Controls the Phidget MotorControl 8x8x8 from a Mac
  
  This shows very simply how to write MAX externals for Phidgets, in Xcode.
  For general info on setting up the build settings properly in xcode see "machodev-readme.txt"
  in the "Mach-O Development" folder of the MAX/MSP SDK, or you can just start with this project.
  
  This requires the Phidget21 framework to be installed and included (available from www.phidgets.com).
*/

#include <Phidget21/Phidget21.h>
#include "ext.h"   // Required for all Max external objects 
 
void *this_class;  // Required. Global pointing to this class  
 
typedef struct _MotorControl // Data structure for this object  
{ 
	t_object b_ob;   // Must always be the first field; used by Max  
	CPhidgetMotorControlHandle phid;
	void *m_clock;
	long serial;
	long sample_rate;
	bool start;
	int numInputs, numMotors;
	void *b_outlet;
} t_MotorControl; 
 
// Prototypes for methods: need a method for each incoming message 
void *MotorControl_new(long serial);    // object creation method 
void MotorControl_version(t_MotorControl *MotorControl);
void MotorControl_serial(t_MotorControl *MotorControl);
void MotorControl_status(t_MotorControl *MotorControl);
void MotorControl_setMotorSpeed(t_MotorControl *MotorControl, long motor, double speed);
void MotorControl_setMotorAcceleration(t_MotorControl *MotorControl, long motor, double acceleration);
void *MotorControl_free(t_MotorControl *MotorControl);
void MotorControl_read(t_MotorControl *MotorControl);
void MotorControl_stop(t_MotorControl *MotorControl);
void MotorControl_start(t_MotorControl *MotorControl);
void MotorControl_setSampleRate(t_MotorControl *MotorControl, long rate);
void clock_tick(t_MotorControl *MotorControl);
void openMotorControl(t_MotorControl *MotorControl, long serial);
void outputMotors(t_MotorControl *MotorControl);
void outputInputs(t_MotorControl *MotorControl);
int MotorChangeHandler(CPhidgetMotorControlHandle ifkit, void *userptr, int Index, double Value);
int InputChangeHandler(CPhidgetMotorControlHandle ifkit, void *userptr, int Index, int Value);
OSStatus threadRead(void* MotorControl);
 
int main(void) 
{  
	// set up our class: create a class definition	
	setup((t_messlist**) &this_class, (method)MotorControl_new, (method)MotorControl_free, (short)sizeof(t_MotorControl), 0L, A_DEFLONG, 0); 
	addmess((method)MotorControl_version, "getVersion", 0);
	addmess((method)MotorControl_serial, "getSerial", 0);
	addmess((method)MotorControl_status, "getStatus", 0);
	addmess((method)MotorControl_read, "read", 0);
	addmess((method)MotorControl_start, "start", 0);
	addmess((method)MotorControl_stop, "stop", 0);
	addmess((method)MotorControl_setSampleRate, "setSampleRate", A_LONG, 0);
	addmess((method)MotorControl_setMotorSpeed, "setMotorSpeed", A_LONG, A_FLOAT,  0);
	addmess((method)MotorControl_setMotorAcceleration, "setAcceleration", A_LONG, A_FLOAT,  0);
	return (0); 
} 
 
void *MotorControl_new(long serial) 
{ 
	t_MotorControl *MotorControl; 
	if(!serial)
		serial=-1;
	// create the new instance and return a pointer to it 
	MotorControl = (t_MotorControl *)newobject(this_class);
	openMotorControl(MotorControl, serial);
	MotorControl->serial = serial;
	MotorControl->b_outlet = outlet_new(MotorControl,0L);
	return(MotorControl);      // must return a pointer to the new instance  
} 

void *MotorControl_free(t_MotorControl *MotorControl) {
	CPhidget_close((CPhidgetHandle)(MotorControl->phid));
	CPhidget_delete((CPhidgetHandle)MotorControl->phid);
	freeobject((t_object *)MotorControl->m_clock);
}

void MotorControl_version(t_MotorControl *MotorControl) 
{  
	long ver;
	CPhidget_getDeviceVersion((CPhidgetHandle)(MotorControl->phid), &ver);
	outlet_int(MotorControl->b_outlet, ver);
} 

void MotorControl_serial(t_MotorControl *MotorControl) 
{  
	long ser;
	CPhidget_getSerialNumber((CPhidgetHandle)(MotorControl->phid), &ser);
	outlet_int(MotorControl->b_outlet, ser);
} 

void MotorControl_status(t_MotorControl *MotorControl) 
{  
	long stat;
	CPhidget_getDeviceStatus((CPhidgetHandle)(MotorControl->phid), &stat);
	outlet_int(MotorControl->b_outlet, stat);
} 

void MotorControl_setMotorSpeed(t_MotorControl *MotorControl, long motor, double speed)
{
	CPhidgetMotorControl_setMotorSpeed(MotorControl->phid, motor, speed);
}

void MotorControl_setMotorAcceleration(t_MotorControl *MotorControl, long motor, double acceleration)
{
	CPhidgetMotorControl_setAcceleration(MotorControl->phid, motor, acceleration);
}

void MotorControl_read(t_MotorControl *MotorControl) 
{  
	clock_unset(MotorControl->m_clock);
	MotorControl->start = false;
	outputMotors(MotorControl);
	outputInputs(MotorControl);
}

void MotorControl_start(t_MotorControl *MotorControl) 
{  	
	if(!(MotorControl->sample_rate<0))
		clock_delay(MotorControl->m_clock, MotorControl->sample_rate);
	MotorControl->start = true;
}


void MotorControl_stop(t_MotorControl *MotorControl) 
{  
	if(!(MotorControl->sample_rate<0))
		clock_unset(MotorControl->m_clock);
	MotorControl->start = false;
}

void MotorControl_setSampleRate(t_MotorControl *MotorControl, long rate) 
{  
	if(rate<0)
		clock_unset(MotorControl->m_clock);
	else
		if(MotorControl->start == true && MotorControl->sample_rate < 0)
			clock_delay(MotorControl->m_clock, MotorControl->sample_rate);
	MotorControl->sample_rate = rate;
}

void clock_tick(t_MotorControl *MotorControl) {
	
	clock_delay(MotorControl->m_clock, MotorControl->sample_rate);
	outputMotors(MotorControl);
	outputInputs(MotorControl);
}

int gotAttach(CPhidgetHandle phid, void *userptr) {
	t_MotorControl *MotorControl = (t_MotorControl *)userptr;
	CPhidgetMotorControl_getNumMotors(MotorControl->phid, &(MotorControl->numMotors));
	CPhidgetMotorControl_getNumInputs(MotorControl->phid, &(MotorControl->numInputs));
}

void openMotorControl(t_MotorControl *MotorControl, long serial) {
	int i;
	//setup timing
	MotorControl->sample_rate = 100; //set default sample rate to 100ms
	MotorControl->m_clock = clock_new(MotorControl, (method)clock_tick);
	MotorControl->start = false;

	CPhidgetMotorControl_create(&(MotorControl->phid));
	CPhidget_set_OnAttach_Handler((CPhidgetHandle)(MotorControl->phid), gotAttach, MotorControl);
	CPhidgetMotorControl_set_OnInputChange_Handler((MotorControl->phid),&InputChangeHandler,MotorControl);
	CPhidgetMotorControl_set_OnMotorChange_Handler((MotorControl->phid),&MotorChangeHandler,MotorControl);
	CPhidget_open((CPhidgetHandle)(MotorControl->phid), serial);
}


int MotorChangeHandler(CPhidgetMotorControlHandle ifkit, void *userptr, int Index, double Value){
	t_MotorControl *MotorControl = (t_MotorControl *)userptr;
	if(MotorControl->sample_rate<0 && MotorControl->start)
		outputMotors(MotorControl);
	return 0;
}

void outputMotors(t_MotorControl *MotorControl) {
	t_atom analog[16];
	short i;
	double ai[16];

	for (i=0; i < MotorControl->numMotors; i++) { 
		CPhidgetMotorControl_getMotorSpeed(MotorControl->phid, i, &ai[i]);
		SETFLOAT(analog+i,ai[i]); /* macro for setting a t_atom */ 
	}
	
	outlet_anything(MotorControl->b_outlet, gensym("motor"), MotorControl->numMotors, analog);
}

int InputChangeHandler(CPhidgetMotorControlHandle ifkit, void *userptr, int Index, int Value){
	t_MotorControl *MotorControl = (t_MotorControl *)userptr;
	if(MotorControl->sample_rate<0 && MotorControl->start)
		outputInputs(MotorControl);
	return 0;
}

void outputInputs(t_MotorControl *MotorControl) {
	t_atom digital[16];
	short i;
	int di[16];

	for (i=0; i < MotorControl->numInputs; i++) { 
		CPhidgetMotorControl_getInputState(MotorControl->phid, i, &di[i]);
		SETLONG(digital+i,di[i]); /* macro for setting a t_atom */ 
	} 
	
	outlet_anything(MotorControl->b_outlet, gensym("input"), MotorControl->numInputs, digital);
}

