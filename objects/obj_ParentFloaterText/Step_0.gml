/// @description FLOAT AND DECAY

while (Lifespan > 0)
{
	y -= 0.50;
	myAlpha -= 0.05;
	Lifespan -= 1;
}

if (Lifespan <= 0)
	instance_destroy();