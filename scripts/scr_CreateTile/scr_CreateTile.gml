var tileNum = argument0;
var xpos = argument1;
var ypos = argument2;

var thisHex = instance_create_layer(xpos, ypos, "Instances", obj_hexTester); // create a new Hex Tile
						
thisHex.vectorX = c; //Make sure the Hex Tile knows it's vector in the grid
thisHex.vectorY = r;
thisHex.landType = landColor.neutral;
thisHex.tileID = tileNum;
				
var keyName = "COL" + string(thisHex.vectorX) + "ROW" + string(thisHex.vectorY); //the unique name of our hex tile
thisHex.codeName = keyName;