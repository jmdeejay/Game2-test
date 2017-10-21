/// @description DRAW TEXT


// HEADER
draw_set_halign(fa_center);
draw_set_font(fnt_Doogle14);
var _height = string_height(titleString);
draw_text_outline(topMargin + _height, (room_width/2), titleString + string(G.TurnCount - 1), myColor, dropColor, 1, 1);

draw_set_halign(fa_left);

// RATIONS
if (showRations) // Triggered by Alarm Event 1
{
	draw_set_halign(fa_left);
	draw_set_font(fnt_CodersCrux19);
	var _width = string_width("RATIONS: "); // will be used for placement purposes
	// draw outline left-side label
	draw_text_outline(room_width/3, topMargin * 3, "RATIONS: ", myColor, dropColor, 1, 1);
	
	var _widthTwo = string_width(string(previousRations)); // used for floaterSpawn placement purposes
	
	draw_text(room_width/3 + _width + 10, topMargin * 3, string(previousRations)); // draw a number
	
	floaterSpawnPoint[0] = _width + _widthTwo; // set x address spot
	floaterSpawnPoint[1] = topMargin * 3; // set y address spot
	alarm_set(0, room_speed); // Set DoTheThing

}
