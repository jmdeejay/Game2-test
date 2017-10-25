/// @description Init Vars

event_inherited();

labelOne = "Time Spent: ";
var _percent = obj_MyShip.ReadyPercent / 100;
valueOne = G.DistanceTravelled / round(obj_MyShip.myShip[? "SailSpeed"] * _percent);
