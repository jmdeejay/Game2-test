// Invoked by: obj_ButtonQty **EXCLUSIVE**
// Purpose: Increment Qty number of obj_InputQty

if (myInput.printNumber < 100 and myInput.isManual == false)
{
	myInput.printNumber ++;
	with (obj_InputQty)
	{
		event_user(0);
	}
}

if (myInput.isManual == true)
{
	myInput.isManual = false;
	myType = 0;
	with (obj_InputQty)
	{
		event_user(0);
	}
}