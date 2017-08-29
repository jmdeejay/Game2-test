/// @description UPDATE POS, IMG INDX
image_index = 0;

// SPICE COLUMN
Names_x1 = x + 5;
Names_y1 = y + 5;

Names_x2 = x + 78;
Names_y2 = y + 19;

// COLUMN 1
Column1_x1 = x + 83;
Column1_x2 = x + 110;

// COLUMN 2
Column2_x1 = x + 115;
Column2_x2 = x + 142;

// COLUMN 3
Column3_x1 = x + 147;
Column3_x2 = x + 174;

// COLUMN 4
Column4_x1 = x + 179;
Column4_x2 = x + 206;

// COLUMN 5
Column5_x1 = x + 211;
Column5_x2 = x + 238;

// COLUMN 6
Column6_x1 = x + 243;
Column6_x2 = x + 266;

// HOTZONES
isColumnOne = point_in_rectangle(mouse_x, mouse_y, Column1_x1, Names_y1, Column1_x2, bbox_bottom);
isColumnTwo = point_in_rectangle(mouse_x, mouse_y, Column2_x1, Names_y1, Column2_x2, bbox_bottom);
isColumnThree = point_in_rectangle(mouse_x, mouse_y, Column3_x1, Names_y1, Column3_x2, bbox_bottom);
isColumnFour = point_in_rectangle(mouse_x, mouse_y, Column4_x1, Names_y1, Column4_x2, bbox_bottom);
isColumnFive = point_in_rectangle(mouse_x, mouse_y, Column5_x1, Names_y1, Column5_x2, bbox_bottom);
isColumnSix = point_in_rectangle(mouse_x, mouse_y, Column6_x1, Names_y1, Column6_x2, bbox_bottom);

if (isColumnOne)
{
	image_index = 1;
	if (mouse_check_button_released(mb_left))
		scr_DialogueInterrupt(obj_YourCargo.image_index);
}

if (isColumnTwo)
{
	image_index = 2;
	if (mouse_check_button_released(mb_left))
		scr_DialogueInterrupt(obj_Available.image_index);
}

if (isColumnThree)
{
	image_index = 3;
	if (mouse_check_button_released(mb_left))
		scr_DialogueInterrupt(obj_YouPaid.image_index);
}

if (isColumnFour)
{
	image_index = 4;
	if (mouse_check_button_released(mb_left))
		scr_DialogueInterrupt(obj_PriceHere.image_index);
}

if (isColumnFive)
{
	image_index = 5;
	if (mouse_check_button_released(mb_left))
		scr_DialogueInterrupt(obj_LowestPrice.image_index);
}

if (isColumnSix)
{
	image_index = 6;
	if (mouse_check_button_released(mb_left))
		scr_DialogueInterrupt(obj_HighestPrice.image_index);
}
