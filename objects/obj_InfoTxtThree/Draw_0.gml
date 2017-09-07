/// @description DRAW TXT

draw_set_font(headerFont)
var _height = string_height(labelOne);
var _width = string_width(labelOne);

draw_set_halign(headerAlign);
draw_set_color(headerColor);
draw_text(x, y, labelOne);

draw_set_font(bodyFont);
draw_set_halign(bodyAlign);
draw_set_color(bodyColor);
draw_text(x + xOffset, y + _height, scr_CurrencyFormat(valueOne, 0, 0, 3));

draw_set_halign(fa_left);
draw_set_color(COLOR_WHITE_LIGHT);