/// @description PASSENGERS TRIGGER

obj_PassengerTurnText.showLabel = true;
var _passText = instance_number(obj_PassengerTurnText) - 1;
nextObject = instance_find(obj_PassengerTurnText, _passText);
alarm_set(0, room_speed);