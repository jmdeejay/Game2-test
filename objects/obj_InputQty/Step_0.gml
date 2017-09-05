/// @description MOUSE CLICK EVNT

if (isManual == true or printNumber > 0)
	visible = true;
else if (printNumber == 0 and isManual == false)
	visible = false;

if (visible == true)
{
	if point_in_rectangle(mouse_x, mouse_y, x, y, x+myWidth, y+myHeight)
	{
		if mouse_check_button_pressed(mb_left)
		{
			if (!isManual)
			{
				keyboard_string = "0";
				isManual = true;
				var _confirm =  instance_create_layer(plusButton.x, plusButton.y, "Boxes", obj_ButtonQtyManual);
				_confirm.myInput = id;
				_confirm.myType = 2;
				instance_destroy(plusButton);
				var _cancel = instance_create_layer(minusButton.x, minusButton.y, "Boxes", obj_ButtonQtyManual);
				_cancel.myInput = id;
				_cancel.myType = 3;
				_cancel.image_index = 6;
				instance_destroy(minusButton);
			}			
		}
	}
}

if (isManual)
{ 
	keyboard_string = string_digits(keyboard_string);
	myText = keyboard_string;
	var _checkNumber = int64(myText);
	var _checkNumber = _checkNumber % 100;
	printNumber = _checkNumber;
}

itemTotal = printNumber * itemPrice;