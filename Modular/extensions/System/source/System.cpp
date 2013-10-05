/** @file
 *
 * @ingroup modularSystem
 *
 * @brief System scheduler class
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2013, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "Scheduler.h"
#include "System.h"

#define thisTTClass                 System
#define thisTTClassName             "System"
#define thisTTClassTags             "scheduler, System"

#define thisSchedulerVersion		"0.1"
#define thisSchedulerAuthor         "Theo de la Hogue"
#define thisSchedulerStretchable	YES

extern "C" TT_EXTENSION_EXPORT TTErr TTLoadJamomaExtension_System(void)
{
	TTFoundationInit();
	System::registerClass();
	return kTTErrNone;
}

SCHEDULER_CONSTRUCTOR,
mGranularity(20.0),
mThread(NULL)
{	
	SCHEDULER_INITIALIZE
    
    addAttribute(Granularity, kTypeFloat64);
}

System::~System()
{
    // if a thread is running
    if (mThread) {
        
        // stop thread execution
		mThread->wait();
        delete mThread;
        mThread = NULL;
    }
}

TTErr System::getParameterNames(TTValue& value)
{
	value.clear();
	//value.append(TTSymbol("aParameter"));
	
	return kTTErrNone;
}

TTErr System::Go()
{
    // do we need to ramp at all ?
    if (mDuration <= mOffset) {
        
        mRunning = NO;
        mPaused = NO;
        mProgression = 0.;
        mRealTime = 0.;
        
        (mCallback)(mBaton, mProgression, mRealTime);
        
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each progression attribute observers
        progressionAttribute->sendNotification(kTTSym_notify, mProgression);  // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each elapsed time attribute observers
        realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);  // we use kTTSym_notify because we know that observers are TTCallback
    }
    // if the thread is not running
    else if (mThread == NULL) {
        
        // launch a new thread to run the scheduler execution
        mThread = new TTThread(TTThreadCallbackType(&SystemThreadCallback), (TTPtr)this);
    
    }
    
    return kTTErrNone;
}

TTErr System::Stop()
{
	mRunning = NO;
    mPaused = NO;
    
    // if a thread is running
    if (mThread) {
        
        // stop thread execution
		mThread->wait();
        delete mThread;
        mThread = NULL;
    
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
    }
    
    return kTTErrNone;
}

TTErr System::Tick()
{
    TTFloat64 delta = computeDeltaTime();
    
    if (mPaused)
        return kTTErrNone;
    
    mProgression += (delta * mSpeed) / mDuration;
    mRealTime += delta;
    
    if (mProgression < 1.) {
        
        (mCallback)(mBaton, mProgression, mRealTime);
        
        // notify each progression attribute observers
        progressionAttribute->sendNotification(kTTSym_notify, mProgression);    // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each elapsed time attribute observers
        realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);          // we use kTTSym_notify because we know that observers are TTCallback
    }
    else {
        
        mRunning = NO;
        mPaused = NO;
        
        // forcing progression to 1. to allow filtering
        mProgression = 1.;
        
        (mCallback)(mBaton, mProgression, mRealTime);
        
        // notify each progression attribute observers
        progressionAttribute->sendNotification(kTTSym_notify, mProgression);    // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each elapsed time attribute observers
        realTimeAttribute->sendNotification(kTTSym_notify, mRealTime);          // we use kTTSym_notify because we know that observers are TTCallback
        
        // notify each running attribute observers
        runningAttribute->sendNotification(kTTSym_notify, mRunning);            // we use kTTSym_notify because we know that observers are TTCallback
    }
    
    return kTTErrNone;
}

TTErr System::Pause()
{
    mPaused = YES;
    
    return kTTErrNone;
}

TTErr System::Resume()
{
    mPaused = NO;
    
    return kTTErrNone;
}

TTFloat64 System::computeDeltaTime()
{
	TTUInt64 deltaInUs = 0;
    TTUInt64 granularityInUs = mGranularity * 1000;

	struct timeval tv;

	// get the current time (in µs)
	#ifdef TT_PLATFORM_WIN
		Time2 time2;
		time2.gettimeofday(&tv, NULL);
	#else
		struct timezone tz;
		gettimeofday(&tv, &tz);
	#endif

	TTUInt64 currentTime = tv.tv_sec * 1000000L + tv.tv_usec;
    
	if (mLastTime != 0) {
        
		deltaInUs = (currentTime - mLastTime);
        
		if (deltaInUs < granularityInUs) {
            
			#ifdef TT_PLATFORM_WIN
				Sleep((granularityInUs - deltaInUs) / 1000);
			#else
				usleep(granularityInUs - deltaInUs);
			#endif
            
			deltaInUs = granularityInUs;
		}
        
		mLastTime += deltaInUs;
	}
    else
		mLastTime = currentTime;
    
    // return the delta in ms
	return TTFloat64(deltaInUs / 1000.);
}

void SystemThreadCallback(void* anSystemScheduler)
{
    SystemPtr aScheduler = SystemPtr(anSystemScheduler);
    
    // reset timing informations
    aScheduler->mRunning = YES;
    aScheduler->mPaused = NO;
    aScheduler->mProgression = aScheduler->mOffset / aScheduler->mDuration;
    aScheduler->mRealTime = aScheduler->mOffset;
    aScheduler->mLastTime = 0.;
    
    // notify each running attribute observers
    aScheduler->runningAttribute->sendNotification(kTTSym_notify, aScheduler->mRunning);          // we use kTTSym_notify because we know that observers are TTCallback
    
    // launch the tick if the duration is valid and while it have to run
    if (aScheduler->mDuration > 0.)
        while(aScheduler->mRunning)
            aScheduler->Tick();
}
