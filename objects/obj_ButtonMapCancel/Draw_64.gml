/// @description Draw Text

// SPRITE
draw_sprite(sprite_index, image_index, xstart, ystart);

// TEXT
draw_set_font(fnt_Doogle10);
draw_set_halign(fa_left);
draw_set_color(myColor);
draw_text( x + 4, y + 38, myString);