/// @description EVAL AND UPDATE

switch (myType)
{
	case 0: // Just Show Cash
	valueOne = obj_MyLedger.Cash;
	break;

	case 1: // Show Subtotal of Items Purchasing
	valueOne = obj_LocalStore.mySubtotal;
	if (valueOne > obj_MyLedger.Cash)
		bodyColor = COLOR_RED_DARK;
	else
		bodyColor = COLOR_WHITE_LIGHT;
	break;
}