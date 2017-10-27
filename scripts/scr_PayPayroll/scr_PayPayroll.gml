// Invoked by: obj_ButtonPay

if (obj_MyLedger.Cash > obj_MyLedger.MyLedger[? "Payroll"]) // Do I have enough Cash?
{
	obj_MyLedger.Cash -= obj_MyLedger.MyLedger[? "Payroll"]; // Subtract from Cash
	obj_MyLedger.MyLedger[? "Payroll"] = 0; // Reset Payroll to 0.
} else if (obj_MyLedger.Cash < obj_MyLedger.MyLedger[? "Payroll"]) // Do I have less than enough?
{
	obj_MyLedger.MyLedger[? "Payroll"] -= obj_MyLedger.Cash; // Subtract the Payroll by what cash I have.
	obj_MyLedger.Cash = 0; // Set Cash to zero :(
}