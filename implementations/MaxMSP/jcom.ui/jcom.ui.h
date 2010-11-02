/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "ext.h"
#include "ext_obex.h"
#include "ext_user.h"
#include "ext_common.h"
#include "jpatcher_api.h"			// jpatcher_api.h must come before z_dsp.h (in Jamoma.h)
#include "jgraphics.h"
#include "TTModular.h"				// Jamoma Modular API
#include "ModularForMax.h"			// Jamoma Modular for Max
#include "MaxObjectTypes.h"
#include "ext_symobject.h"
#include "TTElement.h"

// members
typedef struct _ui{
	t_jbox				box;
	TTPtr				outlet;					///< outlet -- used for sending preview to jit.pwindow
	TTHashPtr			hash_datas;				///< hash table of TTData
	TTHashPtr			hash_viewers;			///< hash table of TTViewer
	TTObjectPtr			nmspcExplorer;			///< internal TTExplorer object to observe the entire namespace
	TTObjectPtr			modelExplorer;			///< internal TTExplorer object to observe the model namespace
	TTObjectPtr			modelMessExplorer;		///< internal TTExplorer object to observe messages
	TTObjectPtr			modelParamExplorer;		///< internal TTExplorer object to observe parameters
	TTObjectPtr			modelRetExplorer;		///< internal TTExplorer object to observe returns
	TTSubscriberPtr		viewSubscriber;			///< internal TTSubscriber object to create a /view node
	
	TTSymbolPtr			address;
	TTSymbolPtr			patcherType;
	TTSymbolPtr			patcherClass;
	TTSymbolPtr			patcherName;
	ObjectPtr			patcher;

	t_jrgba				bgcolor;
	t_jrgba				bordercolor;
	t_jrgba				headercolor;
	t_jrgba				textcolor;
	
	long				ui_freeze;				// freeze all viewers of the jview (TODO)
	
	t_jpopupmenu		*menu;					// model menu
	void				*menu_qelem;			// ...
	long				menu_selection;			// ...
	t_linklist			*menu_items;			// ...
	AtomPtr				preset_names;
	AtomCount			preset_num;

	t_jpopupmenu		*refmenu;				// reference menu
	void				*refmenu_qelem;			// ...
	long				refmenu_selection;		// ...
	t_linklist			*refmenu_items;			// ...

	long				has_preset;				// is the binded model have preset features ?
	long				has_help;				// is the binded model have help patch ?
	long				has_ref;				// is the binded model have reference page ?
	
	long				has_internals;			// is the binded model have internals pather ? (always yes...)
	
	long				has_panel;				// is the binded model have a panel ?
	t_rect				rect_panel;

	long				has_meters;				// is the binded model have meters ? (set number of meters, not just a toggle)
	long				is_metersdefeated;
	t_rect				rect_meters;

	long				has_mute;				// is the binded model have a mute ?
	long				is_muted;
	t_rect				rect_mute;

	long				has_bypass;				// is the binded model have a bypass ?
	long				is_bypassed;
	t_rect				rect_bypass;

	long				has_freeze;				// is the binded model have a freeze ?
	long				is_frozen;
	t_rect				rect_freeze;

	long				has_preview;			// is the binded model have a preview ?
	long				is_previewing;
	t_rect				rect_preview;

	long				has_gain;				// is the binded model have a gain ?
	float				gain;
	t_rect				rect_gain;
	bool				gainDragging;
	
	long				has_mix;				// is the binded model have a mix ?
	float				mix;
	t_rect				rect_mix;
	bool				mixDragging;
	
	t_pt				anchor;				// used for dragging the dials
	float				anchorValue;		//	...
} t_ui;


// prototypes: general
t_ui*		ui_new(t_symbol *s, long argc, t_atom *argv);
void 		ui_free(t_ui *x);
t_max_err	ui_notify(t_ui *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
t_max_err	ui_address_set(t_ui *x, t_object *attr, long argc, t_atom *argv);
t_max_err	ui_address_get(t_ui *x, t_object *attr, long *argc, t_atom **argv);
void		ui_build(t_ui *x);
void 		ui_bang(t_ui *x);

// prototypes: drawing/ui
void 		ui_paint(t_ui *x, t_object *view);
void 		ui_mousedown(t_ui *x, t_object *patcherview, t_pt pt, long modifiers);
void		ui_mousedragdelta(t_ui *x, t_object *patcherview, t_pt pt, long modifiers);
void		ui_mouseup(t_ui *x, t_object *patcherview);
void*		ui_oksize(t_ui *x, t_rect *rect);
void		ui_preset_interface(t_ui *x);

// prototypes: menus
void		ui_menu_do(t_ui *x, t_object *patcherview, t_pt px, long modifiers);
void 		ui_menu_qfn(t_ui *x);
void 		ui_menu_build(t_ui *x);
void		ui_refmenu_do(t_ui *x, t_object *patcherview, t_pt px, long modifiers);
void 		ui_refmenu_qfn(t_ui *x);
void 		ui_refmenu_build(t_ui *x);

// prototypes: internal TTData and TTViewer
void		ui_data_create(t_ui *obj, TTObjectPtr *returnedData, SymbolPtr aCallbackMethod, TTSymbolPtr service, TTSymbolPtr name);
void		ui_data_create_all(t_ui* obj);
void		ui_data_destroy(t_ui *obj, TTSymbolPtr name);
void		ui_data_destroy_all(t_ui* obj);
void		ui_data_send(t_ui *obj, TTSymbolPtr name, TTValue v);

void		ui_viewer_create(t_ui *obj, TTObjectPtr *returnedViewer, SymbolPtr aCallbackMethod, TTSymbolPtr name);
void		ui_viewer_destroy(t_ui *obj, TTSymbolPtr name);
void		ui_viewer_destroy_all(t_ui *obj);
void		ui_viewer_send(t_ui *obj, TTSymbolPtr name, TTValue v);
void		ui_viewer_freeze(t_ui *obj, TTSymbolPtr name, TTBoolean f);
void		ui_viewer_refresh(t_ui *obj, TTSymbolPtr name);

void		ui_explorer_create(ObjectPtr x, TTObjectPtr *returnedExplorer, SymbolPtr method);
void		ui_nmspcExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_modelExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv); 
void		ui_modelMessExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_modelParamExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_modelRetExplorer_callback(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		ui_return_color_contentBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_color_toolbarBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_color_toolbarText(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_color_border(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_view_size(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_view_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_view_refresh(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_view_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		ui_return_metersdefeated(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_bypass(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_mix(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_gain(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		ui_return_preview(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

// prototype: ui handling for preset features
void		ui_preset_store_next(t_ui *x);
void		ui_preset_doread(t_ui *x);
void		ui_preset_dowrite(t_ui *x);
void		ui_return_preset_names(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
