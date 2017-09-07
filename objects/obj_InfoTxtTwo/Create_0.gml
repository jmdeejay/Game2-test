/// @description INIT VAR

labelOne = "Test:";
valueOne = 555;
valueTwo = 999;

storeBarrelsAtStart = G.CurrentBarrels;

with (obj_MyBarrels)
{
	event_user(0); // Update Current Barrels
}