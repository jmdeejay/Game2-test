/// @description DRAW SELF

/// @description 

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

// DRAW SELF
draw_sprite(sprite_index, image_index, _viewx, _viewy);

// DROP SHADOW

draw_set_font(myFont);
draw_set_halign(fa_left);
draw_text_color( _viewx + (sprite_width div 4 + 4), _viewy + (sprite_height div 3 + 4), myString,
				 dropColor, dropColor, dropColor, dropColor, 1);

// TEXT
draw_set_font(myFont);
draw_set_halign(fa_left);
draw_set_color(myColor);
draw_text( _viewx + (sprite_width div 4), _viewy + (sprite_height div 3), myString);
