/// @description DRAW TXT

draw_set_font(fnt_Doogle10)
var _height = string_height(labelOne);
var _width = string_width(labelOne);

draw_set_color(myColor);
draw_set_halign(fa_left);
draw_text(x, y, labelOne);

draw_set_font(fnt_Doogle10);
draw_set_halign(fa_left);
draw_text(x, y + _height, valueOne);