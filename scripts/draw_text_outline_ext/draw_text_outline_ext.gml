/// draw_text_outlined_ext(x, y, str, stringWidth, sep, color, outlineColor, alpha, width);
var myTmpX, myTmpY, myStr, myStringWidth, mySep, myColor, myOutlineColor, myAlpha, myWidth, myPrecision;

myTmpX = argument[0];
myTmpY = argument[1];
myStr = argument[2];
myStringWidth = 1000;
if(argument_count > 3){ myStringWidth = argument[3]; }
mySep = -1;
if(argument_count > 4){ mySep = argument[4]; }
myColor = c_white;
if(argument_count > 5){ myColor = argument[5]; }
myOutlineColor = c_black;
if(argument_count > 6){ myOutlineColor = argument[6]; }
myAlpha = 1;
if(argument_count > 7){ myAlpha = argument[7]; }
myWidth = 2;
if(argument_count > 8){ myWidth = argument[8]; }

myPrecision = 8; // Value between 1 and 360 : Higher the value, higher the precision.
myPrecision = median(1, myPrecision, 360);
var myTmpColor = draw_get_color();

draw_set_alpha(myAlpha);
draw_set_color(myOutlineColor);
for (var i = 0; i <= 360; i += 360 / myPrecision){
  draw_text_ext(myTmpX + sin(degtorad(i)) * myWidth, myTmpY + cos(degtorad(i)) * myWidth, myStr, mySep, myStringWidth);
}

draw_set_color(myColor);
draw_text_ext(myTmpX, myTmpY, myStr, mySep, myStringWidth);
draw_set_color(myTmpColor);