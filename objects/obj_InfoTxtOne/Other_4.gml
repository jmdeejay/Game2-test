/// @description Configure Xoffset

var _roomName = room_get_name(room);
currentRoom = string_copy(_roomName, 1, string_length(_roomName) - 1);

var _width = string_width(labelOne);

switch (currentRoom)
{
	case "rm_Market":
	xOffset = _width / 2;
	break;
	
	case "rm_Store":
	xOffset = 0;
	break;
		
}
