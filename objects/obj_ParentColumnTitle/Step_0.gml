/// @description ALTER TEMPy

if (isMouseLeave)
{
	tempY = lerp(tempY, 0, 0.02);
	tempAlpha = lerp(tempAlpha, 0.60, .10);
}

if (isMouseEnter)
{
	tempY = lerp(tempY, 256, 0.03);
	tempAlpha = lerp(tempAlpha, 0.10, 0.10);
}

if (obj_Darken.visible == true)
	visible = false;