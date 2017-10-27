// Invoked by: obj_ButtonPay

if (obj_MyLedger.Cash > obj_MyLedger.MyLedger[? "Payroll"]) // Do I have enough Cash?
{
	obj_MyLedger.Cash -= obj_MyLedger.MyLedger[? "Payroll"]; // Subtract from Cash
	obj_MyLedger.MyLedger[? "Payroll"] = 0; // Reset Payroll to 0.
}