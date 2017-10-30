/// @description SPAWN PAY BUTTON
// Triggered by: obj_PayrollTurnText - Alarm 0
show_debug_message("Tax Alarm triggered");

if (obj_MyLedger.MyLedger[? "Taxes"] > 0)
{
	var _xspot = x + obj_PayrollTurnText.labelWidth + obj_PayrollTurnText.valueWidth + xMargin;
	var thisButton = instance_create_layer(_xspot, y, "Buttons", obj_ButtonPayTurn);
	thisButton.y -= (thisButton.sprite_height / 3);
	thisButton.myAction = scr_PayTaxes;
}

allDone = true;