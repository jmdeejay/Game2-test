// Invoked by: obj_goBackButton
show_debug_message("Go Back!");

if !ds_stack_empty(G.stateStack)
	ds_stack_pop(G.stateStack)
