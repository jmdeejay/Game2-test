/// @description TAX TRIGGER

obj_TaxTurnText.showLabel = true;
var _taxText = instance_number(obj_TaxTurnText) - 1;
nextObject = instance_find(obj_TaxTurnText, _taxText);
alarm_set(0, room_speed);