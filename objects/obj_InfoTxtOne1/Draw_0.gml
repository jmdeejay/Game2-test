/// @description DRAW TXT

draw_set_font(fnt_Doogle14)
var _height = string_height(labelOne);
var _width = string_width(labelOne);

draw_set_color(COLOR_WHITE_LIGHT);
draw_set_halign(fa_center);
draw_text(x, y, labelOne);

draw_set_font(fnt_Doogle10);
draw_set_halign(fa_right);
draw_text(x + (_width / 2), y + _height, scr_CurrencyFormat(valueOne, 0, 0, 3));