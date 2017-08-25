/// Objective: Load previously-saved contents of myMap
show_debug_message("LOAD START");


var iter = 0; // start at 0 count
repeat (global.hexCount) // do this for each hex tile that exists
{
	scr_loadOperation(iter); // do a load operation of the old hex tile, referencing the ds_list w our count
	iter += 1;  // iterate the count

}

iter = 0;

show_debug_message("LOAD COMPLETE");