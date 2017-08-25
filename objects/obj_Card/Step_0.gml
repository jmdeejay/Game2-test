/// @description IS SELECTED?

var myCollider = collision_rectangle(myStartX - 32, 
								 myStartY - 40,
								 myStartX + 32,
								 myStartY + 40,
								 obj_MouseCursor, false, true);

if (myCollider != noone)
{
	isHot = true;
	if (mouse_check_button_pressed(mb_left))
	{
		with (obj_Card) // All *OTHER* Cards need to be un-selected.
		{
			isSelected = false; // The OTHER card is now un-selected
		}	
		isSelected = true;
		show_debug_message("Card picked!");
		with (myChar)
		{
			event_user(0); // Save your selection
		}
		
		with (obj_ButtonChooseShip)
		{
			// instance_activate_object(obj_ButtonChooseShip);
			isVisible = true;
		}
		
		with (obj_TextCaptains)
		{
			isVisible = false;
			myMessage = other.myChar.thisInfo;
			event_user(1);
			isVisible = true;
		}
		 
	}
} else
		isHot = false;
	
if (isHot or isSelected)
{
	myBlend = COLOR_WHITE_LIGHT;
	y = myStartY + 5;

} else 
{
	y = myStartY;
	myBlend = COLOR_WHITE_DARK;
}