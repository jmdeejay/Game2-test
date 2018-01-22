/// scr_QuickLoad(captainNo, shipNo, redirect);
// *************************************************************************
// CaptainNo 1 = Captain Corvus, 2 = Captain Dante, 3 = Captain Christian
// ShipNo 1 = Remex, 2 = Nostro, 3 = Ark
// Redirect directly to the room you want.
// *************************************************************************

var captainId = 1;
if(argument_count > 0){ captainId = clamp(1, argument[0], 3); }
var shipId = 1;
if(argument_count > 1){ shipId = clamp(1, argument[1], 3); }
var defaultRoom = rm_Port1;
var redirect = defaultRoom;
if(argument_count > 2){ redirect = argument[2]; }
var captainObj = noone;
var shipObj = noone;

switch(captainId){
	default:
	case 1 : captainObj = obj_CaptainCorvus; break;
	case 2: captainObj = obj_CaptainDante; break;
	case 3: captainObj = obj_CaptainChristian; break;
}

switch(shipId){
	default:
	case 1 : shipObj = obj_Remex; break;
	case 2: shipObj = obj_Nostro; break;
	case 3: shipObj = obj_Ark; break;
}

scr_NewGame();
var captain = instance_create_depth(0, 0, 0, captainObj);
captain.visible = false;
var ship = instance_create_depth(0, 0, 0, shipObj);
ship.visible = false;

scr_ChooseCap(captain.Name, captain.CrewStatus, captain.CrewXPGrow, captain.CrewReadinessModifier, captain.CrewPayRate, 
captain.CrewTraitorChance, captain.CrewMorale, captain.StartingCannons, captain.LuckModifier);

scr_ChooseShip([ship.Name, ship.SailSpeed, ship.MaxReady, ship.CurrentReady, ship.PassengerCapacity, 
ship.CurrentCannons, ship.CannonCapacity, ship.SightRange, ship.ShipHP, ship.isCorvusCaptain, ship.isDanteCaptain, 
ship.isChristianCaptain, ship.Capacity, ship.MaxHP, ship.CurrentAmmo]);

instance_destroy(captain);
instance_destroy(ship);

if !instance_exists(obj_MyCaptain){ instance_create_depth(0, 0, 0, obj_MyCaptain); }
if !instance_exists(obj_MyShip){ instance_create_depth(0, 0, 0, obj_MyShip); }
if !instance_exists(obj_MyLedger){ instance_create_depth(0, 0, 0, obj_MyLedger); }
if !instance_exists(obj_MyBarrels){ instance_create_depth(0, 0, 0, obj_MyBarrels); }
if !instance_exists(obj_Globals){ instance_create_depth(0, 0, 0, obj_Globals); }
if !instance_exists(obj_WorldQty){ instance_create_depth(0, 0, 0, obj_WorldQty); }

G.TotalTourismDemand = irandom_range(24, 36);
G.VaiosAttract = 4;
G.DomosAttract = 4;
G.ChirskAttract = 3;
G.BarcellusAttract = 5;
G.ZandrettaAttract = 6;
G.SyrrAttract = 2;
G.KandaAttract = 3;

if(room_exists(redirect)){
	room_goto(redirect);
}else{
	room_goto(defaultRoom);
}
