// Objective: Update Ledger with new game values.
// Change the room to starting Port.

with (obj_MyBarrels)
{
	G.MaxBarrels = obj_MyShip.Capacity;
	var _Balls = obj_MyShip.CurrentCannons * 4;
	CurrentCannons = obj_MyShip.CurrentCannons;
	AmmoBarrels = ceil( _Balls / 12);
	event_user(1);
	G.CurrentBarrels = scr_SumBarrels();
}

with (obj_MyLedger)
	event_user(1); // Update New Cash

with (obj_WorldQty)
{
	event_user(10); // Fill World Qty Table
	event_user(0); // Setup Prices 
}
room_goto(2);