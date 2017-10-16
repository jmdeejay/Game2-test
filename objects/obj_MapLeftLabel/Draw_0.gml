/// @description DRAW TEXT, SELF
var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;
x = _viewx - (xstart - path_get_x(myPath, path_position));
y = _viewy;
    
// DRAW SPRITE
draw_self();
    
if (visible and isPathEnded){
    // DRAW TEXT
    draw_set_font(myFont);
    draw_set_color(myColor);
    draw_text(x + 6, y + 6, labelOne + string(valueOne));
}
