/// @description 

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

// DRAW SELF
draw_sprite(sprite_index, image_index, _viewx, _viewy);


// TEXT
draw_set_font(myFont);
draw_set_halign(fa_left);
draw_set_color(myColor);
draw_text( _viewx + 4, _viewy + 38, myString);







