/// @description EVAL AND UPDATE

x = obj_ButtonOk.x;
y = obj_ButtonOk.y + 50;

if (obj_ButtonOk.visible == true)
	visible = true;
else visible = false;

switch (obj_ButtonOk.myMode)
{
	case 5:
	labelOne = "Cost:"
	var _subtotal = obj_InputCash.printNumber *  obj_LocalMarket.myPrices[G.SpiceToBuy];
	if (_subtotal > obj_MyLedger.Cash)
		myColor = COLOR_RED_HOT;
	else myColor = COLOR_YELLOW_LIGHT;
	
	valueOne = scr_CurrencyFormat(_subtotal, 0, 0, 3);
	break;

}