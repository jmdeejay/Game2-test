/// @description SPAWN PAY BUTTON
// Triggered by: obj_PassengerTurnText - Alarm 0
show_debug_message("Payroll Alarm triggered");

if (obj_MyLedger.MyLedger[? "Payroll"] > 0)
{
	var _xspot = x + labelWidth + valueWidth + xMargin;
	var thisButton = instance_create_layer(_xspot, y - (thisButton.sprite_height / 2), "Buttons", obj_ButtonPayTurn);
	thisButton.myAction = scr_PayPayroll;
}

with (obj_TaxTurnText)
{
	alarm_set(0, room_speed);	
}

allDone = true;