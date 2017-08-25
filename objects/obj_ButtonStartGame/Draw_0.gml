/// @description ANIMATE BUTTON
if (isAnimate)
	myTimer += 0.15;

draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, sin(myTimer)* 8, image_blend, image_alpha);