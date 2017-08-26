/// @description UPDATE X and Y, COLOR

// POSITION UPDATES
titleX = bbox_left + 10;
titleY = bbox_top + 3;

quarterButton.x = titleX;
quarterButton.y = titleY + 48;

halfButton.x = titleX + 45;
halfButton.y = titleY + 48;

allButton.x = titleX + 90;
allButton.y = titleY + 48;

cancelButton.x = titleX + 134;
cancelButton.y = titleY + 48;

inputField.x = titleX;
inputField.y = titleY  + 31;

okButton.x = titleX + 174;
okButton.y = titleY + 31;
///////////////////////////

// UPDATE COLOR

switch (obj_ButtonOk.myMode)
{
	case 5: // Buying Barrels
	if (valueTwo < obj_InputCash.printNumber)
		labelTwoColor = COLOR_RED_HOT;
	else labelTwoColor = COLOR_WHITE_LIGHT;
	break;
	
}
