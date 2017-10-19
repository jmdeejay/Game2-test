/// @description INIT VARIABLES
// All of the assets and debts of the Player

// ASSETS //
Cash = 0;
Savings = 0;


// LIABILITIES //
SharkLoan = 0;
BankLoan = 0;
Payroll = 0;
Taxes = 0;


// PASSENGERS
Advertising = 0;
TicketPrice = 1000;


MyLedger = ds_map_create();

ds_map_add(MyLedger, "Cash", Cash);
ds_map_add(MyLedger, "Savings", Savings);
ds_map_add(MyLedger, "SharkLoan", SharkLoan);
ds_map_add(MyLedger, "BankLoan", BankLoan);
ds_map_add(MyLedger, "Payroll", Payroll);
ds_map_add(MyLedger, "Taxes", Taxes);




