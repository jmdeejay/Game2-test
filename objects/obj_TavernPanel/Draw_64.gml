/// @description ITEM DESCRIPTION

if (obj_Dialog.done == true)
{
	var _x = obj_Dialog.x + 10;
	var _y = obj_Dialog.y + 10;
	draw_set_font(fnt_Venice16);
	var _width = obj_Dialog.sprite_width - myPortrait.sprite_width;
	var _test = "M";
	var _height = string_height(_test);
	
	// Item Descriptions (Describing Crew types)
	if (hotZone_0)
		draw_text_outline(_x, _y, slot_0, titleColor, dropColor, 1, 1);
	else if (hotZone_1)
		draw_text_outline(_x, _y, slot_1, titleColor, dropColor, 1, 1);
	else if (hotZone_2)
		draw_text_outline(_x, _y, slot_2, titleColor, dropColor, 1, 1);
	
}


draw_set_font(fnt_CodersCrux12);