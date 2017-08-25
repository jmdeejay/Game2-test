// Invoked by: obj_ButtonCancel
show_debug_message("Cancel Pop 1 - Push");
obj_InputCash.printNumber = 0;
obj_InputCash.isManual = false;
obj_Darken.depth = 1000;
if (instance_exists(obj_Panel))
	obj_Panel.depth = 1010;

ds_stack_push(G.stateStack, GameState.BNK_CancelTransaction);