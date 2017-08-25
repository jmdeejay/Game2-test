
with (obj_Darken)
{
	visible = true;
}

with (obj_PopUp)
{
	visible = true;
	myTitle = "Savings Deposit";
	event_user(0);
	labelOne = "Cash: ";
	labelTwo = "Savings: ";
	valueOne = obj_MyLedger.Cash;
	valueTwo = obj_MyLedger.Savings
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

