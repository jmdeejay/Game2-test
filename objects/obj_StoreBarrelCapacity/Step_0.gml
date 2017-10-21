/// @description Insert INCREMENT IMAGE INDEX

var _meterPercent = obj_InfoTxtTwo.valueOne / obj_InfoTxtTwo.valueTwo; // Divide global current barrels by Global capacity	
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


