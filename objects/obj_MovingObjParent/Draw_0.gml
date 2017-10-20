/// @description DRAW TEXT, SELF

x = round(camera_get_view_x(view_camera[0]) + animX);
y = round(camera_get_view_y(view_camera[0]) + animY);

// DRAW SPRITE
draw_sprite(sprite_index, image_index, x, y);
    
if (visible and isEnded){
    // DRAW TEXT
    draw_set_font(myFont);
    draw_set_color(myColor);
	var str = labelOne;
	if(drawValue){ str += string(valueOne); }
    draw_text(x + xTextOffset, y + yTextOffset, str);
}
