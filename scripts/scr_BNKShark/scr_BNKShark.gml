with (obj_Darken)
{
	visible = true;
}

with (obj_PopUp)
{
	visible = true;
	myTitle = "Repay Shark";
	event_user(0);
	labelOne = "Cash: ";
	labelTwo = "Shark: ";
	valueOne = obj_MyLedger.Cash;
	valueTwo = obj_MyLedger.SharkLoan;
}

with (obj_ButtonMoveCash)
{
	visible = true;
}

with (obj_ButtonCancel)
{
	visible = true;
}

with (obj_InputCash)
{
	visible = true;
}
