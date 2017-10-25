/// @description TIME SPENT TRIGGER

obj_TimeTurnText.showLabel = true;
var _txt = instance_number(obj_TimeTurnText) - 1;
nextObject = instance_find(obj_TimeTurnText, _txt);
alarm_set(0, room_speed);