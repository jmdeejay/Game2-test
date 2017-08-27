/// @description DRAW TXT

draw_set_font(fnt_CodersCrux12)
var _height = string_height(labelOne);
var _width = string_width(labelOne);

draw_set_color(COLOR_WHITE_LIGHT);
draw_set_halign(fa_left);
draw_text(x, y, labelOne);

draw_set_font(fnt_CodersCrux12);
draw_set_halign(fa_left);
draw_text(x, y + _height, string(valueOne) + " out of " + string(valueTwo));