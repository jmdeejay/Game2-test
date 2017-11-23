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
	case MORALE.Nothing: // Nothing Happened
	_morale += (G.MoraleNoEvent + _modifier);
	break;
	
	case MORALE.Bad: // Something Bad Happened
	_morale += (G.MoraleBadEvent + _modifier);
	break;
	
	case MORALE.WitnessPunishment: // This crew member witnessed some punishment
	_morale += (G.MoraleWitnessPunishment + _modifier);
	break;
	
	case MORALE.WitnessMercy: // This crew member witnessed mercy
	_morale += (G.MoraleWitnessMercy + _modifier);
	break;
	
	case MORALE.BePunished: // This crew member was punished
	_morale += (G.MoraleBePunished + _modifier);
	break;
	
	case MORALE.Fortune: // Something Good Happened
	_morale += (G.MoraleFortuneEvent + _modifier);
	break;
	
	case MORALE.GoodCrew: // The crew did something good for everyone
	_morale += (G.MoraleGoodCrew + _modifier);
	break;
	
	case MORALE.BattleWon: // The crew won a naval battle
	_morale += (G.MoraleWonBattle + _modifier);
	break;
	
	case MORALE.BattleLost: // The crew Lost a naval battle
	_morale += (G.MoraleLostBattle + _modifier);
	break;
	
	case MORALE.GetPaid: // This crew member got paid
	_morale += (G.MoraleGetPaid + _modifier);
	break;
	
	case MORALE.GetStiffed: // This crew member got partial payment
	_morale += (G.MoraleGetPartialPay + _modifier);
	break;	
}

_morale = clamp(_morale, 0, 100);

return _morale;