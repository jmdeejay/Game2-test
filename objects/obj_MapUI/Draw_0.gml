/// @description DRAW SELF

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

// DRAW PORT NAMES ON MAP
if (VaioDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Vaio_X + 4, Vaio_Y + 8, VaioString);
}

if (DomoDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Domo_X, Domo_Y + 8, DomoString);
}

if (ChirDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Chir_X - 8, Chir_Y + 8, ChirString);
}

if (ZandDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Zand_X, Zand_Y - 8, ZandString);
}

if (BarcDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Barc_X + 4, Barc_Y - 8, BarcString);
}

if (SyrrDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Syrr_X, Syrr_Y - 8, SyrrString);
}

if (KandDraw)
{
	draw_set_font(mapFont);
	draw_set_color(bodyColor);
	draw_text(Kand_X - 8, Kand_Y - 8, KandString);
}

// DRAW SELF
draw_sprite(sprite_index, image_index, _viewx, _viewy);