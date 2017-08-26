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
	myTitle = "Buy " + ds_grid_get(obj_MrktGrid.myGrid, 0, _spice);
	event_user(0);
	labelOne = "At Port: ";
	valueOne = ds_grid_get(obj_MrktGrid.myGrid, 2, _spice);
	labelTwo = "Space: ";
	valueTwo = (G.MaxBarrels - G.CurrentBarrels);	
}

with (obj_ButtonOk)
{
	myMode = 5;
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