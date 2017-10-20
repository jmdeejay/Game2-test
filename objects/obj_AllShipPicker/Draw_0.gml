/// @description Insert description here

if (myCard.isHot != false or myCard.isSelected != false)
{
	draw_sprite_ext(sprite_index, image_index, x - 3, y + 3, image_xscale, image_yscale, 0, c_black, 0.45);
	draw_set_font(fnt_Venice16);
	draw_set_color(c_white);
	draw_text_outline(x-16, y+40, Name, COLOR_WHITE_LIGHT, COLOR_BLACK_DARK, 1, 1);
}
draw_self();