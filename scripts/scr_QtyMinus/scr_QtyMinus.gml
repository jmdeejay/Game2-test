// Invoked by: obj_ButtonQty **EXCLUSIVE**
// Purpose: Increment Qty number of obj_InputQty

if (myInput.printNumber > 0)
{
	myInput.printNumber --;
	with (obj_InputQty)
	{
		event_user(0);
	}
}

if (myInput.isManual == true)
{
	myInput.printNumber = 0;
	myInput.isManual = false;
	myType = 1;
	with (obj_InputQty)
	{
		event_user(0);
	}
}