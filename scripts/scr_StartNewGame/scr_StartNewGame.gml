// Objective: Update Ledger with new game values.
// Change the room to starting Port.

with (obj_MyShip)
{
	event_user(1); // Check Captain, apply bonus
}

with (obj_MyBarrels)
{
	G.MaxBarrels = obj_MyShip.myShip[? "Capacity"];
	var _Balls = obj_MyShip.myShip[? "CurrentCannons"] * 4;
	MyBarrels[# 0, 19] = obj_MyShip.myShip[? "CurrentCannons"];
	MyBarrels[# 0, 20] = ceil( _Balls / 12);
	event_user(0); // Update Current Barrels / SumBarrels
}

with (obj_MyLedger)
	event_user(1); // Update New Cash

with (obj_WorldQty)
{
	event_user(10); // Fill World Qty Table
	event_user(0); // Setup Prices 
}

room_goto(2); // Goto starting port