// Invoked by: obj_MrktSupply  **EXCLUSIVE**
// argument0 is the column location

var _col = argument0;
var column_x1 = variable_instance_get(id, "Column" + string(_col) + "_x1")
var column_x2 = variable_instance_get(id, "Column" + string(_col) + "_x2")

for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisPercent = ds_grid_get(myGrid, _col, i);
	var thisWidth = column_x2 - column_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	
	var thisColor;
	if (thisPercent < 34)
		thisColor = COLOR_RED_DARK;
	else if ((thisPercent >= 34) and (thisPercent < 67))
		thisColor = COLOR_YELLOW_DARK;
	else if (thisPercent >= 67)
		thisColor = COLOR_GREEN_DARK;
		
	draw_set_color(thisColor);
	draw_text_ext(column_x2, (i * thisHeight) + Names_y1, floor(thisPercent), 0, thisWidth);
}
