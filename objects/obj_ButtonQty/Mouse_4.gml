/// @description IMG INDX UPDATE
if (visible)
{
	pressDelay = false;

	if (!myType and 
		myInput.printNumber < 100 and 
		obj_InfoTxtTwo.valueOne < obj_InfoTxtTwo.valueTwo)
			myInput.printNumber ++;

	else if (myType and myInput.printNumber > 0)
		myInput.printNumber -= 1;

	alarm_set(0, 40);
}