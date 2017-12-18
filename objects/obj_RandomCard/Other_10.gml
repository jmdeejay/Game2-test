/// @description SPAWN BUTTONS


if (!isDecision)
{
	var _x = 93 + bbox_left;
	var _y = 223 + bbox_top;
	var thisButton = instance_create_layer(_x, _y, "UI", obj_ButtonRandomOKAY);
	thisButton.myCard = id;
} else 
{
	var _x = bbox_left + xOffset;
	var _y = 223 + bbox_top;
	
	var yesButton = instance_create_layer(_x, _y, "UI", obj_ButtonRandomYES);
	yesButton.myCard = id;
	var _buttonWidth = yesButton.sprite_width;
	
	var noButton = instance_create_layer(_x + (2 * _buttonWidth), _y, "UI", obj_ButtonRandomNO);
	noButton.myCard = id;
}
