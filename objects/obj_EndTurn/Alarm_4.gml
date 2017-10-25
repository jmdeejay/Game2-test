/// @description TAX TRIGGER

obj_TaxTurnText.showLabel = true;
var _txt = instance_number(obj_TaxTurnText) - 1;
nextObject = instance_find(obj_TaxTurnText, _txt);
alarm_set(0, room_speed);