// Invoked by: obj_ButtonPay

if (obj_MyLedger.Cash > obj_MyLedger.MyLedger[? "Taxes"]) // Do I have enough Cash?
{
	obj_MyLedger.Cash -= obj_MyLedger.MyLedger[? "Taxes"]; // Subtract from Cash
	obj_MyLedger.MyLedger[? "Taxes"] = 0; // Reset Taxes to 0.
} else if (obj_MyLedger.Cash < obj_MyLedger.MyLedger[? "Taxes"]) // Do I have less than enough?
{
	obj_MyLedger.MyLedger[? "Taxes"] -= obj_MyLedger.Cash; // Subtract the Taxes by what cash I have.
	obj_MyLedger.Cash = 0; // Set Cash to zero :(
}