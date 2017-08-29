/// @description DRAW TXT AND SELF
draw_self();

//DRAW NAMES
draw_set_font(fnt_CodersCrux12);
draw_set_halign(fa_left);
draw_set_color(COLOR_WHITE_DARK);
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisName = ds_grid_get(myGrid, 0, i);	
	var thisWidth = Names_x2 - Names_x1;
	var thisHeight = Names_y2 - Names_y1;
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(Names_x1, (i * thisHeight) + Names_y1, thisName, 0, thisWidth);
}

// DRAW LOCATION 1
for (var i = 1; i < 7; i++)
	scr_DrawSupplyPrice(i);