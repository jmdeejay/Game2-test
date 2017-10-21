/// @description 
x = round(camera_get_view_x(view_camera[0]) + xstart);
y = round(camera_get_view_y(view_camera[0]) + ystart);

// DRAW SELF
draw_sprite(sprite_index, image_index, x, y);

// TEXT
draw_set_font(myFont);
draw_set_halign(fa_left);
draw_set_color(myColor);
draw_text(x + 16, y + 38, myString);







