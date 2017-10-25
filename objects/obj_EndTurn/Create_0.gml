/// @description INIT VARS

topMargin = 20; // Don't draw above y = 20 or below y = 240
sideMargin = 40; // Don't draw left of x = 40 or right of x = 620

myColor = COLOR_WHITE_LIGHT;
dropColor = COLOR_BLACK_LIGHT;

timeSpent = 0;
ticketRevenue = 0;

previousCash = obj_MyLedger.Cash;
previousRations = obj_MyBarrels.MyBarrels[# 0, 21];
previousPassengers = obj_MyShip.CurrentPassengers;

titleString = "End Turn ";

nextObject = noone;
myAlarms = 1;
isDone = false;


// showRations = false;


