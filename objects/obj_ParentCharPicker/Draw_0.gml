/// @description DRAW SHADOW

if (myCard.isHot != false or myCard.isSelected != false)
{
	draw_sprite_ext(sprite_index, image_index, x - 5, y + 5, image_xscale, image_yscale, 0, c_black, 0.45); // draw drop shadow
	draw_set_font(fnt_ChronoType12);
	draw_set_color(c_white);
	draw_text(x-24, y+40, thisCaptain.Name);
}
draw_self(); // draw self on top of drop shadow