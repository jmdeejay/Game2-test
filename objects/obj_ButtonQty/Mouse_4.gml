/// @description IMG INDX UPDATE
pressDelay = false;

if (!myType and myInput.printNumber < 100)
	myInput.printNumber += 1;
else if (myType and myInput.printNumber > 0)
	myInput.printNumber -= 1;

alarm_set(0, 40);
