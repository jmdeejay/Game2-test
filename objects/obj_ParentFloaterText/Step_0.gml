/// @description FLOAT AND DECAY

if (Lifespan > 0)
{
	y -= 0.10;
	myAlpha -= 0.02;
	Lifespan -= 1;
}

if (Lifespan <= 0)
	instance_destroy();