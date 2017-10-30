// Invoked by: obj_ButtonPay

if (obj_MyLedger.Cash > obj_MyLedger.MyLedger[? "Taxes"]) // Do I have enough Cash?
{
	var _string = string(obj_MyLedger.MyLedger[? "Taxes"]);
	obj_MyLedger.Cash -= obj_MyLedger.MyLedger[? "Taxes"]; // Subtract from Cash
	obj_MyLedger.MyLedger[? "Taxes"] = 0; // Reset Taxes to 0.
	obj_TaxTurnText.valueOne = 0;	
	var thisFloater = instance_create_layer(bbox_right + xMargin, y, "Floaters", obj_EndTurnFloater);
	thisFloater.myString = _string;
	thisFloater.myColor = COLOR_RED_LIGHT;
	
} else if (obj_MyLedger.Cash < obj_MyLedger.MyLedger[? "Taxes"]) // Do I have less than enough?
{
	var _string = string(obj_MyLedger.Cash);
	obj_MyLedger.MyLedger[? "Taxes"] -= obj_MyLedger.Cash; // Subtract the Taxes by what cash I have.
	obj_MyLedger.Cash = 0; // Set Cash to zero :(
	obj_TaxTurnText.valueOne = obj_MyLedger.MyLedger[? "Taxes"];
	var thisFloater = instance_create_layer(bbox_right + xMargin, y, "Floaters", obj_EndTurnFloater);
	thisFloater.myString = _string;
	thisFloater.myColor = COLOR_RED_LIGHT;
}