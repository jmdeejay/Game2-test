/// Objective: Write and Save the contents of myMap
show_debug_message("SAVE START");
show_debug_message(string(global.hexCount));

var iter = 0;

repeat (global.hexCount)
{
	scr_saveOperation(iter);
	iter += 1;
}	

show_debug_message("SAVE END");