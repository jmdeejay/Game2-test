/// @description PAYROLL TRIGGER

obj_PayrollTurnText.showLabel = true;
var _txt = instance_number(obj_PayrollTurnText) - 1;
nextObject = instance_find(obj_PayrollTurnText, _txt);
alarm_set(0, room_speed);