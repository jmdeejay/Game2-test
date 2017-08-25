/// @description ANIMATE
event_inherited();

// Time to "pop in" animate.
if (isEnter)
{
    image_speed = .5;
	myScale += 0.05;
	if (myScale >= 1.10)
		myScale = 1;
	if (image_index >=image_number-1)
	{
		image_speed = 0;
		isEnter = false;
		myScale = 1;
	}
}
