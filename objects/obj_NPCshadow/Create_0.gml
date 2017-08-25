/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 587CE8CD
/// @DnDArgument : "code" "mySpeed = 2.01;$(13_10)myScale = 0.0;$(13_10)dx = 0;$(13_10)dy = 0;$(13_10)speed = 3.01;$(13_10)myDepth = -200;$(13_10)depth = myDepth;$(13_10)myType = scr_placeholder;$(13_10)canMove = false;$(13_10)myPath = pth_LeftEnterLeft;$(13_10)$(13_10)myStartPointX = x;$(13_10)myStartPointY = y;$(13_10)alarm_set(0, -1);$(13_10)$(13_10)grayPants = c_gray;$(13_10)orangePants = c_orange;$(13_10)bluePants = c_aqua;$(13_10)$(13_10)redShirt = c_red;$(13_10)yellowShirt = c_yellow;$(13_10)darkShirt = c_dkgray;$(13_10)$(13_10)yellowSkin = make_color_rgb(255,255,204);$(13_10)whiteSkin = make_color_rgb(255,249,232);$(13_10)brownSkin = make_color_rgb(175,112,32);$(13_10)$(13_10)myLegs = instance_create_layer(x, y,"Legs", obj_playerLegs);$(13_10)with myLegs$(13_10){$(13_10)	myParent = other.id;$(13_10)	myColor = choose(other.grayPants, other.orangePants, other.bluePants);$(13_10)}$(13_10)$(13_10)myTorso = instance_create_layer(x, y, "Torso", obj_playerTorso);$(13_10)with myTorso$(13_10){$(13_10)	myParent = other.id;$(13_10)	myColor = choose(other.redShirt, other.yellowShirt, other.darkShirt);$(13_10)}$(13_10)$(13_10)myHead = instance_create_layer(x, y, "Heads", obj_playerHead);$(13_10)with myHead$(13_10){$(13_10)	myParent = other.id;$(13_10)	myColor = choose(other.yellowSkin, other.whiteSkin, other.brownSkin);$(13_10)}"
mySpeed = 2.01;
myScale = 0.0;
dx = 0;
dy = 0;
speed = 3.01;
myDepth = -200;
depth = myDepth;
myType = scr_placeholder;
canMove = false;
myPath = pth_LeftEnterLeft;

myStartPointX = x;
myStartPointY = y;
alarm_set(0, -1);

grayPants = c_gray;
orangePants = c_orange;
bluePants = c_aqua;

redShirt = c_red;
yellowShirt = c_yellow;
darkShirt = c_dkgray;

yellowSkin = make_color_rgb(255,255,204);
whiteSkin = make_color_rgb(255,249,232);
brownSkin = make_color_rgb(175,112,32);

myLegs = instance_create_layer(x, y,"Legs", obj_playerLegs);
with myLegs
{
	myParent = other.id;
	myColor = choose(other.grayPants, other.orangePants, other.bluePants);
}

myTorso = instance_create_layer(x, y, "Torso", obj_playerTorso);
with myTorso
{
	myParent = other.id;
	myColor = choose(other.redShirt, other.yellowShirt, other.darkShirt);
}

myHead = instance_create_layer(x, y, "Heads", obj_playerHead);
with myHead
{
	myParent = other.id;
	myColor = choose(other.yellowSkin, other.whiteSkin, other.brownSkin);
}