/// @description UPDATE PAYROLL
// Invoked by: obj_SetSail - Left Pressed Event

var _headCount = ds_list_size(obj_MyCaptain.myCrewManifest);
var _payRate = G.CrewWages * obj_MyCaptain.myCaptain[? "CrewPayRate"]
var _payPeriod = _headCount * _payRate;

MyLedger[? "Payroll"] += _payPeriod;
