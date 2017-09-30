/// @description SUM CREW TYPES
// Invoked when entering Tavern Room.
// Invoked when Entering Port.


var _size = ds_list_size(myCrewManifest);
var _sea = 0;
var _cook = 0;
var _gunr = 0;

for (var i = 0; i < _size; i++)
{
	var _type = "";
	var _map = myCrewManifest[| i];
	
	switch (_map[? "Type"])
	{
		case "Seaman":
		_sea += 1;
		break;
		
		case "Cook": 
		_cook += 1;
		break;
		
		case "Gunner":
		_gunr += 1;
		break;
	}
}

totalSeamen = _sea;
totalCooks = _cook;
totalGunners = _gunr;

