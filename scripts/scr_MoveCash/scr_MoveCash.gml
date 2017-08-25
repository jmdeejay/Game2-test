//Invoked by: obj_ButtonMoveCash
// Changes obj_InputCash.printNumber based on myMode. Returns nothing.
// argument0 is myType.

var _type, _cash;
_type = argument0;

switch (obj_ButtonOk.myMode)
{
	case 0: _cash = obj_MyLedger.Cash; break; // BNK
	case 1: _cash = obj_MyLedger.Savings; break; // BNK
	case 2: _cash = G.BankCreditLimit; break; // BNK
	case 3: _cash = obj_MyLedger.Cash; break; // BNK
	case 4: _cash = obj_MyLedger.Cash; break; // BNK
	case 5: _cash = obj_PopUp.valueOne; break; // MKT
}

switch (_type)
{
	case 0: //one-quarter deposit
	var _newcash;
	_newcash = _cash div 4;
	obj_InputCash.printNumber = _newcash;
	break;
	
	case 1: //one-half deposit
	var _newcash;
	_newcash = _cash div 2;
	obj_InputCash.printNumber = _newcash;
	break;
	
	case 2: //one-half deposit
	var _newcash;
	_newcash = _cash;
	obj_InputCash.printNumber = _newcash;
	break;
}