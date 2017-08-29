// Invoked by: obj_MrktSupply  **EXCLUSIVE**
// argument0 is the column location

var _col = argument0;
var column_x1 = variable_instance_get(id, "Column" + string(_col) + "_x1")
var column_x2 = variable_instance_get(id, "Column" + string(_col) + "_x2")

for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisPrice = ds_grid_get(myGrid, _col, i); // Price at distant port
	var thisWidth = column_x2 - column_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	
	var priceHere = obj_LocalMarket.myPrices[i]; // Price HERE and now.
	var priceQuad = priceHere div 4;
	
	var thisColor;
	
	
  if (thisPrice <= priceHere)
        thisColor = COLOR_RED_DARK;
    else if (thisPrice > priceHere * 1.5)
        thisColor = COLOR_GREEN_DARK;
    else
        thisColor = COLOR_YELLOW_DARK;
		
	draw_set_color(thisColor);
	draw_text_ext(column_x2, (i * thisHeight) + Names_y1, floor(thisPrice), 0, thisWidth);
}
