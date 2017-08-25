/// @description UPDATE ALPHA

if (fadeIn and myAlpha < 1)
{
	myAlpha += 0.01;
}

if (fadeOut and myAlpha > 0)
{
	myAlpha -= 0.01;
}

if (holdAlpha)
	myAlpha = 1.0;