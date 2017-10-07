/// @description PLACE MARKER
// Invoked by: Create Event

show_debug_message("Arrow target port is " + myTargetPort);

var _target = myTargetPort;
var _x, _y;

if (myTargetPort != "") // If a Port was selected...
{
	visible = true;
	isAnimate = true;
	with (obj_hexTester) // Out of all these hex tiles...
	{
		if (landTitle == _target) // ... the one with the matching Land title...
		{
		_x = x; // Set this object's position to the same tile
		_y = y - 12; // Needs to be *above* the tile
		}
	}	

}

x = _x;
y = _y;

show_debug_message("Done Placing Arrow.");