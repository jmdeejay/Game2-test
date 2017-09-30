
with (obj_MyLedger)
{
	event_user(1); // Setup Cash
	
}

with (obj_NewGame)
{
	event_user(1); // Setup Captain	
	event_user(2); // Setup Ship
}

with (obj_MyCaptain)
{
	event_user(0); // Setup Starting Crew
}

with (obj_MyBarrels)
{
	G.MaxBarrels = obj_MyShip.myShip[? "Capacity"];
	var _Balls = obj_MyShip.myShip[? "CurrentCannons"] * 4;
	MyBarrels[# 0, 19] = obj_MyShip.myShip[? "CurrentCannons"];
	MyBarrels[# 0, 20] = ceil( _Balls / 12);
	MyBarrels[# 0, 21] = 10; // Give 10 Ration barrels
	event_user(0); // Update Current Barrels / SumBarrels
}

with (obj_WorldQty)
{
	event_user(10); // Fill World Qty Table
	event_user(0); // Setup Prices 
}

with (obj_NewGame)
{
	event_user(9); // Destroy obj_NewGame and its maps
}

room_goto(rm_Port1);