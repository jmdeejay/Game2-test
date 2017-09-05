/// @description VISIBLE UPDATE

if (myInput.isManual == true)
	visible = true;
else if (myInput.isManual == false)
{
	switch (myType)
	{
 		case 2: // Confirm button
		var _button = instance_create_layer(x, y, "Boxes", obj_ButtonQty);
		_button.myType = 0;
		_button.myInput = myInput;
		_button.image_index = 0;
		break;
	
		case 3: // Cancel button

		var _button = instance_create_layer(x, y, "Boxes", obj_ButtonQty);
		_button.myType = 1;
		_button.myInput = myInput;
		_button.image_index = 2;
		break;
	}
	with (obj_InputQty)
	{
		event_user(0);
	}
	instance_destroy();
}
