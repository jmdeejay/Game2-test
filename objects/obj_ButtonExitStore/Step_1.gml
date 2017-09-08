/// @description UPDATE IMG INDX

if (obj_LocalStore.mySubtotal > obj_MyLedger.Cash) // Do I have enough money?
{
	visible = false;
}

if (visible)
{
	if (obj_LocalStore.mySubtotal > 0) // There are items in my cart
	{
		image_index = 2;
		if (mouse_check_button_pressed(mb_left))
		{
			image_index = 3;
		}
		if (mouse_check_button_released(mb_left))
				myAction = scr_placeholder;

	} else if (obj_LocalStore.mySubtotal == 0) // There are no items in my cart
	{
		image_index = 0;
		if (mouse_check_button_pressed(mb_left))
		{
			image_index = 1;
		}
			if (mouse_check_button_released(mb_left))
				myAction = scr_placeholder;
	}
}