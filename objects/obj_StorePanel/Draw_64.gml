/// @description ITEM DESCRIPTION

if (obj_Dialog.done == true)
{
	var _x = obj_Dialog.x + 10;
	var _y = obj_Dialog.y + 10;
	draw_set_font(fnt_ChronoType16);
	var _width = obj_Dialog.sprite_width - obj_StorePortait.sprite_width;
	var _test = "M";
	var _height = string_height(_test);
	
	if (hotZone_0)
	{
		draw_set_color(dropColor);
		draw_text_ext(_x+2, _y+2, slot_0, _height, _width);
		draw_set_color(titleColor);
		draw_text_ext(_x, _y, slot_0, _height, _width);
		
	} else if (hotZone_1)
	{
		draw_set_color(dropColor);
		draw_text_ext(_x+2, _y+2, slot_1, _height, _width);
		draw_set_color(titleColor);
		draw_text_ext(_x, _y, slot_1, _height, _width);
	}
}


draw_set_font(fnt_CodersCrux12);