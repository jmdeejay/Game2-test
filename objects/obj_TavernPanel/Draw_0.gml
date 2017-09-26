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

// Unpack ds lists
for (var i = 0; i < ds_list_size(obj_LocalTavern.myMenu); i++)
{
	var _y = (yPadding + 28) + (i * 18);
	var _map = obj_LocalTavern.myMenu[| i];
	var _string = _map[? "ItemName"];
	var _width = string_width(_string);
	draw_set_halign(fa_left);
	draw_set_color(bodyColor);
	draw_text_ext(xPadding, _y, _string, 10, _width);	
	
	
	
	//var _x = bbox_right - 14; 
	//var _number = _map[? "ItemPrice"];
	//_width2 = string_width(string(_number));	
	
	//draw_set_halign(fa_right);
	//draw_set_color(bodyColor);
	//draw_text_ext(_x, _y, string(_number), 10, _width2);
	
	//draw_set_halign(fa_left);
	//var _entryLength = string_width(_string) + string_width(string(_number));
	//var _totalDistance = _x - xPadding;
	//var _dotLength = _totalDistance - _entryLength;
	//var _dotString = ".";
	//while(string_width(_dotString) < _dotLength)
	//{
	//	_dotString += ".";
	//}
	//draw_text(x + _width, _y, _dotString);
	
	// draw_rectangle(bbox_left, _y, bbox_right + 28, _y + 14, true);
}


draw_set_halign(fa_left);