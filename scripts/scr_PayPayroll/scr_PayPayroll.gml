// Invoked by: obj_ButtonPay
if (obj_MyLedger.MyLedger[? "Payroll"] != 0 and obj_MyLedger.Cash > 0)
{
	if (obj_MyLedger.Cash > obj_MyLedger.MyLedger[? "Payroll"]) // Do I have enough Cash?
	{
		var _floaterString = string(obj_MyLedger.MyLedger[? "Payroll"]);
		scr_DividePayroll(obj_MyLedger.MyLedger[? "Payroll"]); // Divvy up the pay amongst the crew
		obj_MyLedger.Cash -= obj_MyLedger.MyLedger[? "Payroll"]; // Subtract from Cash
		obj_MyLedger.MyLedger[? "Payroll"] = 0; // Reset Payroll to 0.
		obj_PayrollTurnText.valueOne = 0;
		var thisFloater = instance_create_layer(bbox_right + xMargin, y, "Floaters", obj_EndTurnFloater);
		thisFloater.myColor = COLOR_RED_LIGHT;
		thisFloater.myString = _floaterString;
	
	} else if (obj_MyLedger.Cash < obj_MyLedger.MyLedger[? "Payroll"]) // Do I have less than enough?
	{
		var _floaterString = string(obj_MyLedger.Cash);
		scr_DividePayroll(obj_MyLedger.Cash); // Divvy up the pay amongst the crew
		obj_MyLedger.MyLedger[? "Payroll"] -= obj_MyLedger.Cash; // Subtract the Payroll by what cash I have.
		obj_MyLedger.Cash = 0; // Set Cash to zero :(
		var thisFloater = instance_create_layer(bbox_right + xMargin, y, "Floaters", obj_EndTurnFloater);
		thisFloater.myColor = COLOR_RED_LIGHT;
		thisFloater.myString = _floaterString;
	}
}
show_debug_message("Pay Payroll complete.");