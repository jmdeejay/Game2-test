/// @description DRAW TEXT


// HEADER
draw_set_halign(fa_center);
draw_set_font(fnt_Doogle14);
var _height = string_height(titleString);
draw_text_outline(camera_get_view_width(view_camera[0]) / 2, topMargin, titleString + string(G.TurnCount - 1), myColor, dropColor, 1, 1);

draw_set_halign(fa_left);

