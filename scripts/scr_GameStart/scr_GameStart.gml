
 //Has the Author Title card finished?
if (obj_Author.isDone == true)
{
	ds_stack_push(G.stateStack, GameState.TitleScreen);
}

if (keyboard_check_pressed(vk_anykey))
{
	ds_stack_push(G.stateStack, GameState.TitleScreen);
}

if (mouse_check_button(mb_left))
{
	ds_stack_push(G.stateStack, GameState.TitleScreen);
}