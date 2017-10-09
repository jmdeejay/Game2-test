/// @description DRAW TEXT, SELF
var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;
x = _viewx;
y = (ystart + path_get_y(myPath, path_position));
    
// DRAW SPRITE
draw_self();
    
if (visible and isPathEnded){
	y = _viewy;
    // DRAW TEXT
    draw_set_font(myFont);
    draw_set_color(myColor);
    draw_text(x + 3, y + 16, labelOne);
}
