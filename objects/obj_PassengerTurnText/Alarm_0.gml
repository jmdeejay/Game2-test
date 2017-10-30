/// @description SPAWN FLOATER
// Triggered by: obj_RationTurnText - Step Event

if (obj_EndTurn.isDone == true)
{
	if (allDone == false and obj_RationTurnText.allDone == true)
	{
		var _xspot = x + labelWidth + valueWidth;
		var _thisString = string(obj_MyShip.CurrentPassengers * obj_MyLedger.TicketPrice);
		if (obj_MyShip.CurrentPassengers * obj_MyLedger.TicketPrice > 0)
		{
			var thisFloater = instance_create_layer(_xspot, y, "Floaters", obj_EndTurnFloater);
			thisFloater.myString = _thisString;
			thisFloater.myColor = COLOR_GREEN_LIGHT;	
			
			var _tax = scr_CalculateTax(obj_EndTurn.ticketRevenue, 1);
			obj_MyLedger.MyLedger[? "Taxes"] += _tax;
			obj_TaxTurnText.valueOne = obj_MyLedger.MyLedger[? "Taxes"];
			obj_MyLedger.Cash += obj_EndTurn.ticketRevenue;
			show_debug_message("Cash updated.");
		}
		with (obj_PayrollTurnText)
		{
			alarm_set(0, room_speed);	
		}
		allDone = true;
	}
}