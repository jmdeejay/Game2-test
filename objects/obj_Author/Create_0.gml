/// @description INIT ALARMS

event_inherited();

alarm_set(0, room_speed);
alarm_set(1, (4 * room_speed));

isDone = false;