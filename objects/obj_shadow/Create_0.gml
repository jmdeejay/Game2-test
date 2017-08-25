/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1226908E
/// @DnDArgument : "expr" "4.00"
/// @DnDArgument : "var" "mySpeed"
mySpeed = 4.00;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0DBF44CC
/// @DnDArgument : "var" "myScale"
myScale = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BB920D0
/// @DnDArgument : "expr" "4.00"
/// @DnDArgument : "var" "myBaseSpeed"
myBaseSpeed = 4.00;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46D3992B
/// @DnDArgument : "code" "x = G.SpawnX;$(13_10)y = G.SpawnY;$(13_10)$(13_10)myDepth = -200;$(13_10)depth = myDepth; // myDepth may be used in scr_DepthAdjuster$(13_10)dx = 0; // for keyboard movement. Animation requires this. Do not rename or remove.$(13_10)dy = 0; // for keyboard movement Animation requires this. Do not rename or remove.$(13_10)$(13_10)// Time to build a body over this shadow object$(13_10)myLegs = instance_create_layer(x, y, "Legs", obj_playerLegs);$(13_10)with myLegs$(13_10){$(13_10)	myParent = other.id;$(13_10)	myColor = c_ltgray; // Without color specification, will default to white.$(13_10)}$(13_10)$(13_10)myTorso = instance_create_layer(x, y, "Torso", obj_playerTorso);$(13_10)with myTorso$(13_10){$(13_10)	myParent = other.id;$(13_10)	myColor = c_maroon; // Without color specification, will default to white.$(13_10)}$(13_10)$(13_10)myHead = instance_create_layer(x, y, "Heads", obj_playerHead);$(13_10)with myHead$(13_10){$(13_10)	myParent = other.id;$(13_10)}$(13_10)$(13_10)scr_Globals(); // This needs to be relegated to a Game Start object, but Player will do for now."
x = G.SpawnX;
y = G.SpawnY;

myDepth = -200;
depth = myDepth; // myDepth may be used in scr_DepthAdjuster
dx = 0; // for keyboard movement. Animation requires this. Do not rename or remove.
dy = 0; // for keyboard movement Animation requires this. Do not rename or remove.

// Time to build a body over this shadow object
myLegs = instance_create_layer(x, y, "Legs", obj_playerLegs);
with myLegs
{
	myParent = other.id;
	myColor = c_ltgray; // Without color specification, will default to white.
}

myTorso = instance_create_layer(x, y, "Torso", obj_playerTorso);
with myTorso
{
	myParent = other.id;
	myColor = c_maroon; // Without color specification, will default to white.
}

myHead = instance_create_layer(x, y, "Heads", obj_playerHead);
with myHead
{
	myParent = other.id;
}

scr_Globals(); // This needs to be relegated to a Game Start object, but Player will do for now.