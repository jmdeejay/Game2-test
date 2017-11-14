/// @description Set Position
var _x = 0;
var _y = 0;

var _start = landStart

with (obj_hexTester) // Gotta find Port A
{
	if (landTitle == _start) // Found port A
	{
	show_debug_message("Boat Start At " + _start);
	_x = x; // What's the location of port A
	_y = y; // NOTE: Variable scope is in relation to obj_hexTester
	show_debug_message(string(_x));
	show_debug_message(string(_y));
	}
}

x = _x; // variable scope here is in relation to Self.
y = _y;

myStartX = _x;
myStartY = _y;