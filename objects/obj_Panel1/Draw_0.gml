/// @description DRAW TXT AND SELF

draw_self();

// TITLE TEXT
draw_set_font(fnt_ChronoType20);

//Drop Shadow
draw_text_color(xPadding + 2, yPadding + 2, myTitle, dropColor, dropColor, dropColor, dropColor, 1);

// Main Title
draw_text_color(xPadding, yPadding, myTitle, titleColor, titleColor, titleColor, titleColor, 1);

// END TITLE


// BODY TEXT - LEFT
draw_set_font(fnt_CodersCrux19); 

for (var i = array_length_1d(myLeftTexts) - 1; i > -1; i--;)
{
	var _y = (yPadding + 28) + (i * 18);
	draw_set_halign(fa_left);
	draw_text_color(xPadding, _y, myLeftTexts[i], bodyColor, bodyColor, bodyColor, bodyColor, 1);	
}

// BODY TEXT - RIGHT
draw_set_font(fnt_CodersCrux19); 

for (var i = array_length_1d(myRightTexts) - 1; i > -1; i--;)
{
	var _y = (yPadding + 28) + (i * 18);
	var _x = xPadding + 162;
	draw_set_halign(fa_right);
	draw_text_color(_x, _y, myRightTexts[i], dropColor, dropColor, dropColor, dropColor, 1);	
}

draw_set_halign(fa_left);