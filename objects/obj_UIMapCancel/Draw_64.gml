/// @description 

// draw_self();
// do nothing.

// TEXT
draw_set_font(fnt_Doogle10);
draw_set_halign(fa_left);
draw_set_color(myColor);
draw_text( x + 4, y + 38, myString);


// DEBUG
var _viewx = camera_get_view_x(view_camera[0]);
var _viewy = camera_get_view_y(0);

draw_rectangle(_viewx + 50, ystart, xstart, 100, false);


