/// @description Draw Self

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

x = _viewx;
y = _viewy;

// DRAW SELF
draw_sprite(sprite_index, image_index, _viewx, _viewy);
