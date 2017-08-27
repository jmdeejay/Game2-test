/// @description CHANGE SPEED + SETUP GRID
mySpeed = 18;
path_start(myPath, mySpeed, path_action_stop, true);

for (var i = 0; i < 18; i++)
{
	ds_grid_set(myGrid, 0, i, ds_grid_get(G.worldQtyTable, 0, i)); // Names
	// myGrid 1 gets filled at the Create Event
	ds_grid_set(myGrid, 2, i, obj_LocalMarket.myOnHand[i])	 // On Hand Qty
	ds_grid_set(myGrid, 3, i, obj_LocalMarket.myCosts[i])    // Price Paid
	ds_grid_set(myGrid, 4, i, obj_LocalMarket.myPrices[i])	 // Price Here
	ds_grid_set(myGrid, 5, i, ds_grid_get(G.worldRanges, 0, i)) // Low Range Value
	ds_grid_set(myGrid, 6, i, ds_grid_get(G.worldRanges, 1, i)) // Hi Range Value
}

