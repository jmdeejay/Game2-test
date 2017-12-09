/// @description INIT VARS

capLuck = obj_MyCaptain.myCaptain[? "LuckModifier"];
Luck = irandom(100);
totalLuck = capLuck + Luck;
totalLuck = clamp(totalLuck, 0, 100);
show_debug_message("Total Luck will be " + string(totalLuck));

hasRolled = false;


slotOne = "";
slotTwo = chr(irandom_range( ord("A"), ord("J")));
slotThree = chr(irandom_range( ord("A"), ord("J")));

if (totalLuck < 34) // Poor Luck
{
	slotOne = "B"; // Bad Event
} else if (totalLuck >= 34 and totalLuck < 70) // Moderate Luck
{
	slotOne = "N";	
} else if (totalLuck >= 70) // Good Luck
{
	slotOne = "G";	
}

show_debug_message("The Random Card ID is " + slotOne + slotTwo + slotThree);


// CARD values
myID = slotOne + slotTwo + slotThree;


event_user(0); // Pull from JSON