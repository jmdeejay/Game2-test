// Invoked by: obj_GameStates
// Part 2 of 2. Must have obj_ButtonBuy scr_BuyBarrel ran first
// argument0 is mySpice of obj_ButtonBuy

var _spice = argument0;

with (obj_Darken)
{
	visible = true;
}

with (obj_PopUp)
{
	visible = true;
	myTitle = "Sell " + obj_MrktGrid.myGrid[# 0, _spice];
	event_user(0);
	labelOne = "Price Here: ";
	valueOne = obj_MrktGrid.myGrid[# 4, _spice];
	labelTwo = "Price Paid: ";
	valueTwo = obj_MrktGrid.myGrid[# 3, _spice];	
}

with (obj_ButtonOk)
{
	myMode = 6;
}

with (obj_ButtonMoveCash)
{
	visible = true;
}

with (obj_ButtonCancel)
{
	visible = true;
}

with (obj_InputCash)
{
	visible = true;
}