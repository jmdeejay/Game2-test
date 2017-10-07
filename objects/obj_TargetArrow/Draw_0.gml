/// @description ANIMATE

if (isAnimate)
	myTimer += 0.15;

var _bounce = sin(myTimer) * 6;

if (_bounce > 4 and myScale > 0.50) // Am I at the bottom of my bounce?
{
	myScale -= 0.05; // shrink in height
} else if (_bounce < 4 and myScale < 1.0) // Am I not near the bottom of my bounce?
	myScale += 0.10; // spring back to normal height

draw_sprite_ext(sprite_index, image_index, x, y + _bounce, 1, myScale, 0, image_blend, image_alpha);

