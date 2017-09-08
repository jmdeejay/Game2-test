/// @description UPDATE IMG INDX

myHotzone = point_in_rectangle(mouse_x,mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);

if (obj_LocalStore.mySubtotal > obj_MyLedger.Cash) // Do I have enough money?
{
	visible = false;
}

if (visible)
{
	if (obj_LocalStore.mySubtotal > 0) // There are items in my cart
	{
		image_index = 2;
		if (myHotzone and mouse_check_button(mb_left))
		{
			image_index = 3;
		}
		if (myHotzone and mouse_check_button_released(mb_left))
		{
				myAction = scr_StoreExit;
				script_execute(myAction);
		}

	} else if (obj_LocalStore.mySubtotal == 0) // There are no items in my cart
	{
		image_index = 0;
		if (myHotzone and mouse_check_button(mb_left))
		{
			image_index = 1;
		}
			if (myHotzone and mouse_check_button_released(mb_left))
			{
				myAction = scr_ExitBuilding;
				script_execute(myAction, myMode);
			}
	}
}