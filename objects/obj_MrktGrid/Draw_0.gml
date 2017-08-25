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

// DRAW ON BOAT QUANTITIES
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisQty = ds_grid_get(myGrid, 1, i);
	var thisWidth = Cargo_x2 - Cargo_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(Cargo_x2, (i * thisHeight) + Names_y1, thisQty, 0, thisWidth);
}

//DRAW ON HAND AVAILABLE TO SELL
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisQty = ds_grid_get(myGrid, 2, i);
	var thisWidth = OnHand_x2 - OnHand_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(OnHand_x2, (i * thisHeight) + Names_y1, thisQty, 0, thisWidth);
}

// DRAW PRICE PAID
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisCost = ds_grid_get(myGrid, 3, i);
	var thisWidth = Paid_x2 - Paid_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(Paid_x2, (i * thisHeight) + Names_y1, thisCost, 0, thisWidth);
}

//DRAW MARKET PRICE
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisPrice = ds_grid_get(myGrid, 4, i);
	var thisWidth = Price_x2 - Price_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(Price_x2, (i * thisHeight) + Names_y1, thisPrice, 0, thisWidth);
}

//DRAW LOW RANGE
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisRange = ds_grid_get(myGrid, 5, i);
	var thisWidth = LowRange_x2 - LowRange_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(LowRange_x2, (i * thisHeight) + Names_y1, thisRange, 0, thisWidth);
}

//DRAW HI RANGE
for (var i = 0; i < ds_grid_height(myGrid); i++)
{
	var thisRange = ds_grid_get(myGrid, 6, i);
	var thisWidth = HiRange_x2 - HiRange_x1;
	var thisHeight = Names_y2 - Names_y1;
	draw_set_halign(fa_right);
	var isBright =  point_in_rectangle(mouse_x, mouse_y, bbox_left, (i * thisHeight) + Names_y1, bbox_right, (i * thisHeight) + Names_y2)
	if (isBright)
		draw_set_color(COLOR_WHITE_LIGHT);
	else draw_set_color(COLOR_WHITE_DARK);
	draw_text_ext(HiRange_x2, (i * thisHeight) + Names_y1, thisRange, 0, thisWidth);
}

