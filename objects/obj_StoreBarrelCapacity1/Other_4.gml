/// @description SET THE METER

var _meterPercent = obj_InfoTxtTwo.valueOne / obj_InfoTxtTwo.valueTwo; // Divide global current barrels by Global capacity
show_debug_message("Meter Percent is at: " + string(_meterPercent)); // Should be a number between 0 and 1

var _spriteMax = sprite_get_number(sprite_index) - 1; // Should return 39, the number of frames.
currentBarrelCount = floor(_meterPercent * _spriteMax) // multiply the total number of frames by the percent.
image_index = currentBarrelCount;
