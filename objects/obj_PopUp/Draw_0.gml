/// @description TITLE, TEXT

draw_self();

//DRAW TITLE
draw_set_font(fnt_Venice16);
draw_set_halign(fa_left);
//Drop Shadow
draw_text_ext_color(titleX+2, titleY+2, myTitle, 10, 161, dropColor, dropColor, dropColor, dropColor, 1);
//Title  
draw_text_ext_color(titleX, titleY, myTitle, 10, 161, titleColor, titleColor, titleColor, titleColor, 1);

var _valueOne = scr_CurrencyFormat(valueOne, 0, 0, 3);
var _valueTwo = scr_CurrencyFormat(valueTwo, 0, 0, 3);

draw_set_font(fnt_04b03_14);
var _height = string_height(labelOne);
draw_set_color(labelOneColor);
draw_set_halign(fa_center);
draw_text_ext(x, y + 25, labelOne + _valueOne, 15, 170);
draw_set_color(labelTwoColor);
draw_text_ext(x, y + 25 + _height, labelTwo + _valueTwo, 15, 170);

draw_set_halign(fa_left);
