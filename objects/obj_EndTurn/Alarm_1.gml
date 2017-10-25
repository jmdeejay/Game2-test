/// @description RATIONS TRIGGER

obj_RationTurnText.showLabel = true;
var _txt = instance_number(obj_RationTurnText) - 1;
nextObject = instance_find(obj_RationTurnText, _txt);
alarm_set(0, room_speed);