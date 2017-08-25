/// @description UPDATE BOOLS
thisHex = instance_place(x,y, obj_hexTester);
if (thisHex) // am I colliding with a tile? Bob- Returns false if no instance there
{
    if (thisHex.isEncountered == false and thisHex.isAccessible == true) //is this tile cold--not encountered before? is it a water tile?
    {
        show_debug_message("it's true")
        thisHex.myState = States.Leader;
        obj_PathTracker.receiveID = thisHex.id;
        with (obj_PathTracker)
        {
            event_user(0);
        }
        thisHex.isEncountered = true;
    }
}

if (thisHex.landTitle != "" and thisHex.landTitle != "Port0_1")
{
	isDone = true; // stop moving.
	obj_SetSail.isVisible = true;

}