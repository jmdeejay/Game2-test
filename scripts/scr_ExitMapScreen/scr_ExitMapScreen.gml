// Invoked by: obj_ButtonMapCancel
// Purpose: Exit to proper town

var _port = "rm_Port" + string(G.CurrentTown);

var _room = asset_get_index(_port);

room_goto(_room);