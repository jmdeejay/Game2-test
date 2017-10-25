/// @description ORDER TRIGGER

obj_OrderTurnText.showLabel = true;
var _txt = instance_number(obj_OrderTurnText) - 1;
nextObject = instance_find(obj_OrderTurnText, _txt);
alarm_set(0, room_speed);