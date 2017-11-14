/// @description INIT VAR

labelOne = "Test:";
valueOne = 555;
valueTwo = 999;

storeBarrelsAtStart = G.CurrentBarrels;

myRoom = room_get_name(room);

var _last = string_length(myRoom);

myRoom = string_delete(myRoom, _last, 1);

with (obj_MyBarrels)
{
	event_user(0); // Update Current Barrels
}