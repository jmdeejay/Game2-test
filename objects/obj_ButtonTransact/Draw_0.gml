/// @description DRAW

// drop shadow
draw_sprite_ext(sprite_index, image_index, xstart, ystart, 1, 1, 0, dropColor, 0.75); 

image_blend = myColor;
draw_self();

draw_set_font(myFont);
draw_set_halign(fa_center);
draw_set_color(dropColor);
draw_text_transformed(x + sprite_width/2 + 3, y + 33, myTitle, myScale, myScale, 45);
draw_set_color(fontColor);
draw_text_transformed(x + sprite_width/2, y + 30, myTitle, myScale, myScale, 45);
draw_set_halign(fa_left);
