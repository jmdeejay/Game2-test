/// @description DRAW SELF

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

// DRAW SELF
draw_sprite(sprite_index, image_index, _viewx, _viewy);