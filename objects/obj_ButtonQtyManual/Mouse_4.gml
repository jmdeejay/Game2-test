/// @description BOOL UPDATE

image_index += 1;

if (myType == 2) // Confirm
	 myInput.isManual = false;

else if (myType == 3) // Cancel
{	
	show_debug_message("Cancel Clicked.")
	myInput.printNumber = 0;
	myInput.isManual = false;
}

