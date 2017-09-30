// Invoked by: obj_ButtonNewGame
ds_stack_push(G.stateStack, GameState.NewGameScreen);
if (!instance_exists(obj_NewGame))
	instance_create_layer(0,0, "Abstracts", obj_NewGame);