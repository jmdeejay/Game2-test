/// @description MODE SWITCH

event_inherited();

switch (myMode)
{
    case 0: // Show Current Rations
    labelOne = "Rations: ";
	if(instance_exists(obj_MyBarrels)){
		valueOne = obj_MyBarrels.MyBarrels[# 0, 21];
	}
    break;
    
    case 1: // Show Current Speed
    labelOne = "Speed: ";
	if(instance_exists(obj_MyShip)){
		var _percent = obj_MyShip.ReadyPercent / 100;
		var _currentSpeed = round(obj_MyShip.myShip[? "SailSpeed"] * _percent);
		valueOne = _currentSpeed;
	}
    break;
    
    case 2: // Show Distance
    labelOne = "Distance: ";
	if(instance_exists(obj_PathTracker)){
		valueOne = obj_PathTracker.travelDistance;
	}
    break;
    
    case 3: // Show Cost
    labelOne = "Cost: ";
	if(instance_exists(obj_MyShip) && instance_exists(obj_PathTracker) && instance_exists(obj_MyCaptain)){
	    var _percent = obj_MyShip.ReadyPercent / 100;
	    // How far are we travelling?
	    var _dist = obj_PathTracker.travelDistance;
	    // How fast are we travelling?
	    var _spd = round(obj_MyShip.myShip[? "SailSpeed"] * _percent);
	    // How many mouths to feed?
	    var _people = ds_list_size(obj_MyCaptain.myCrewManifest) + obj_MyShip.CurrentPassengers;
	    // Each _dist is 90 nautical miles. Each _leg is 3 hours of travel
	    var _leg = ((_dist * G.MilesPerTile) / _spd) div 3;
	    // Each _leg has a food break.
	    var _cost = round((_leg * _people) / G.ServingsPerRation);
	    valueOne = _cost;
	}
    break;
}
