/// @description DRAW BOX AND NUMBR

draw_rectangle_color(x, y, x + myWidth, y + myHeight, 
					insideColor, insideColor, insideColor, insideColor,
					false); // Fill rectangle

draw_rectangle_color(x, y, x + myWidth, y + myHeight, 
					lineColor, lineColor, lineColor, lineColor,
					true); // Line Border
					
draw_set_font(fnt_CodersCrux12);
draw_set_halign(fa_right);
var _print = scr_CurrencyFormat(printNumber, 0, 0, 3);
draw_set_color(lineColor);
draw_text_ext(x + myWidth - 3, y + 3, _print, 5, myWidth - 3);

draw_set_halign(fa_left);