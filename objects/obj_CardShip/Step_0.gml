/// @description IS SELECTED?

var myCollider = collision_rectangle(myStartX - 50, 
								 myStartY - 35,
								 myStartX + 50,
								 myStartY + 35,
								 obj_MouseController, false, true);

if (myCollider != noone)
{
	isHot = true;
	if (mouse_check_button_pressed(mb_left))
	{
		with (obj_CardShip) // All *OTHER* Cards need to be un-selected.
		{
			isSelected = false; // The OTHER card is now un-selected
		}	
		isSelected = true;
		show_debug_message("Card picked!");
		with (myShip)
		{
			event_user(0); // Save your selection
		}
		
		with (obj_ButtonStartGame) // Should reveal Start Game button.
		{
			isVisible = true;
		}
		
		with (obj_TextShips)
		{
			isVisible = false;
			myMessage = other.myShip.myInfo;
			event_user(1);
			isVisible = true;
		}
		 
	}
} else
	isHot = false;
	
if (isHot or isSelected)
{
	myBlend = COLOR_WHITE_LIGHT;
	y = myStartY + 3;

} else 
{
	y = myStartY;
	myBlend = COLOR_WHITE_DARK;


}