/// @description Configure Xoffset

var _width = string_width(labelOne);

switch (room)
{
	case rm_Market1:
	xOffset = _width / 2;
	break;
	
	case rm_Store1:
	xOffset = 0;
	break;
}
