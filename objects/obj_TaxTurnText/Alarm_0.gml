/// @description SPAWN PAY BUTTON
// Triggered by: obj_PayrollTurnText - Alarm 0
show_debug_message("Tax Alarm triggered");

if (obj_MyLedger.MyLedger[? "Taxes"] > 0)
{
	var _xspot = x + labelWidth + valueWidth + xMargin;
	var thisButton = instance_create_layer(_xspot, y, "Buttons", obj_ButtonPayTurn);
	thisButton.myAction = scr_PayTaxes;
}

allDone = true;