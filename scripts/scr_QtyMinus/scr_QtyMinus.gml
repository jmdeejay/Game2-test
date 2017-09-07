// Invoked by: obj_ButtonQty **EXCLUSIVE**
// Purpose: Increment Qty number of obj_InputQty

if (myInput.printNumber > 0)
{
	myInput.printNumber --;
}

if (myInput.isManual == true)
{
	myInput.printNumber = 0;
	myInput.isManual = false;
	myType = 1;
}
