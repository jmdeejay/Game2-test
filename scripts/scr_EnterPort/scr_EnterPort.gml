// Invoked by: obj_ButtonStartTurn

G.SpawnX = 95;
G.SpawnY = 650;

var _num = string(obj_MyShip.MyDestination);
var _port = "rm_Port";

var _room = asset_get_index(_port + _num);

if (room_exists(_room))
{
	room_goto(_room)
} else
	show_debug_message("Error: Room " + _port + _num + " not found.");