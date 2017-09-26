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
			if (!isManual) // if isManual = true, then disregard.
			{
				keyboard_string = "0";
				with (obj_InputQty) // Disable isManual for other InputQty objects
				{
					isManual = false;
				}
				isManual = true; // Turn on isManual for *this* object
				var _confirm =  instance_create_layer(plusButton.x, plusButton.y, "Boxes", obj_ButtonQtyManual);
				_confirm.myInput = id;
				_confirm.myType = 2; // 2 Means "Accept" button behavior
				var _cancel = instance_create_layer(minusButton.x, minusButton.y, "Boxes", obj_ButtonQtyManual);
				_cancel.myInput = id;
				_cancel.myType = 3;
				_cancel.image_index = 6;
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
	var _roomName = room_get_name(room);
	_roomName = string_copy(_roomName, 1, string_length(_roomName) - 1); // Get Building Name
	
	if (_roomName == "rm_Store")
	{
		if (obj_InfoTxtTwo.valueOne > obj_InfoTxtTwo.valueTwo) // Are there too many barrels?
		{
			 _checkNumber -= (obj_InfoTxtTwo.valueOne - obj_InfoTxtTwo.valueTwo); // reduce it
			 keyboard_string = string(_checkNumber);
		}
	}
	
	printNumber = _checkNumber;
}

switch (localGood)
{
	case "ItemRations":
	itemPrice = obj_LocalStore.ItemRations[? "ItemPrice"];
	itemType = obj_MyBarrels.MyBarrels[# 0, 21];
	break;
	
	case "ItemAmmo":
	itemPrice = obj_LocalStore.ItemAmmo[? "ItemPrice"];
	break;
}

itemTotal = printNumber * itemPrice; // itemTotal gets used by obj_LocalStore User Event 0