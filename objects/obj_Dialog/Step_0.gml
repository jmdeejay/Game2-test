/// @description FFWD FUNCTIONS

fastforward = (keyboard_check(ord("X")) || keyboard_check(vk_space));
if(fastforward){ curDelay = fastDelay; }

if (done){	// Are we done talking? 
	if (hasButtons)
		scr_TransactionButtons(myButtons); // Time to make buttons
	
	ds_stack_push(G.stateStack, GameState.BuildingTransaction);
}

