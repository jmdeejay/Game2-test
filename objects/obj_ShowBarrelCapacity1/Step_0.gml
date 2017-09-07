/// @description Insert INCREMENT IMAGE INDEX

if (obj_Darken.visible == false) // Only do this if we're not in the middle of a transaction
{
	var _meterPercent = G.CurrentBarrels / G.MaxBarrels; // Divide global current barrels by Global capacity	
	var _spriteMax = sprite_get_number(sprite_index) - 1; // Should return 39, the number of frames.
	targetBarrelCount = floor(_meterPercent * _spriteMax);
	if (currentBarrelCount != targetBarrelCount)
	{	
		if (targetBarrelCount > currentBarrelCount)
			currentBarrelCount++;
		else if (targetBarrelCount < currentBarrelCount)
			currentBarrelCount--;
	}
	image_index = currentBarrelCount;
}

