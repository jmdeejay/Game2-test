/// @description DRAW TEXT

draw_set_font(myFont);
draw_set_halign(labelAlign);
var _width = string_width(labelOne);

if (showLabel)
{
	draw_text_outline(x, y, labelOne, myColor, myOutline, 1, 1);	
}

if (showValue)
{
	draw_text(x + _width, y, string(valueOne));	
}