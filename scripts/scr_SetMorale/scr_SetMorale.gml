// Invoked by: scr_DividePayroll,
// Argument0 is the ds_map[? "Morale"] of the effected crew member.
// Argument1 is the type of morale-event effecting the crew member.
// Returns the modified Morale number back to the ds_map[? "Morale"] (recursively)
// Example Line: _map[? "Morale"] = scr_SetMorale(_map[? "Morale"], 2);

var _morale = argument0;
var _mode = argument1;
var _modifier = obj_MyCaptain.myCaptain[? "MoraleModifier"];

switch (_mode)
{
	case 0: // Nothing Happened
	_morale += (G.MoraleNoEvent + _modifier);
	return (_morale);
	break;
	
	case 1: // Something Bad Happened
	_morale += (G.MoraleBadEvent + _modifier);
	return (_morale);
	break;
	
	case 2: // This crew member witnessed some punishment
	_morale += (G.MoraleWitnessPunishment + _modifier);
	return (_morale);
	break;
	
	case 3: // This crew member witnessed mercy
	_morale += (G.MoraleWitnessMercy + _modifier);
	return (_morale);
	break;
	
	case 4: // This crew member was punished
	_morale += (G.MoraleBePunished + _modifier);
	return (_morale);
	break;
	
	case 5: // Something Good Happened
	_morale += (G.MoraleFortuneEvent + _modifier);
	return (_morale);
	break;
	
	case 6: // The crew did something good for everyone
	_morale += (G.MoraleGoodCrew + _modifier);
	return (_morale);
	break;
	
	case 7: // The crew won a naval battle
	_morale += (G.MoraleWonBattle + _modifier);
	return (_morale);
	break;
}