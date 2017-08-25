// Invoked by: obj_GameStates
with (obj_Darken)
{
	visible = false;
}

with (obj_ButtonMoveCash)
{
	visible = false;
}

with (obj_ButtonCancel)
{
	visible = false;
}

with (obj_InputCash)
{
	visible = false;
	printNumber = 0;
}

with (obj_PopUp)
{
	event_user(1);
	alarm_set(0, 12);
	image_blend = c_white;
}