// Invoked by: obj_ButtonQty **EXCLUSIVE**
// Purpose: Increment Qty number of obj_InputQty


if (myInput.printNumber < 100 
	and obj_InfoTxtTwo.valueOne < obj_InfoTxtTwo.valueTwo // Is Current Barrels Less Than Max Barrels?
	and myInput.isManual == false)
		myInput.printNumber ++;

if (myInput.isManual == true)
{
	myInput.isManual = false;
	myType = 0;
}