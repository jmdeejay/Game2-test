/// @description DRAW TEXT, SELF
var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

y = _viewy;

if (visible and !isDone)
{
	draw_sprite(sprite_index, image_index, _viewx - sprite_width + myTimer, _viewy)
	myTimer++;
	if (myTimer == (sprite_width + 4))
		isDone = true;
}


// LOCK POSITION
if (isDone)
{
	x = _viewx;
}

// DRAW SPRITE
draw_self();


// DRAW TEXT

draw_set_font(myFont);
draw_set_color(myColor);
draw_text(x + 3, y + 3, labelOne + string(valueOne));