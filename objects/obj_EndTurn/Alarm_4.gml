/// @description TIME SPENT TRIGGER

obj_TimeTurnText.showLabel = true;
var _timeText = instance_number(obj_TimeTurnText) - 1;
nextObject = instance_find(obj_TimeTurnText, _timeText);
alarm_set(0, room_speed);