/// @description INIT VARS

topMargin = 20; // Don't draw above y = 20 or below y = 240
sideMargin = 40; // Don't draw left of x = 40 or right of x = 620

myColor = COLOR_WHITE_LIGHT;
dropColor = COLOR_BLACK_LIGHT;

timeSpent = 0;
ticketRevenue = 0;

previousCash = obj_MyLedger.Cash;
previousRations = obj_MyBarrels.MyBarrels[# 0, 21];

titleString = "End Turn ";

showRations = false;

doTheThing = false; // For use in Alarm0 Event

floaterSpawnPoint[0] = 0;