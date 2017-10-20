///draw_text_outlined_ext(x, y, text, xscale, yscale, angle, InnerColor, OuterColor, Outline_width);

var X           = argument[0];
var Y           = argument[1];
var TEXT        = argument[2];
var XS          = 1;
if(argument_count > 3){ XS = argument[3]; }
var YS          = 1;
if(argument_count > 4){ YS = argument[4]; }
var ANGLE       = 0;
if(argument_count > 5){ ANGLE = argument[5]; }
var InnerColor  = c_white;
if(argument_count > 6){ InnerColor = argument[6]; }
var OuterColor  = c_black;
if(argument_count >  7){ OuterColor = argument[7]; }
var Amount      = 2;
if(argument_count > 8){ Amount = argument[8]; }

draw_set_color(OuterColor) ;

for(var i = 0; i < 8; i++) {
  draw_text_transformed(X + lengthdir_x(Amount, 45 * i), Y + lengthdir_y(Amount, 45 * i), TEXT, XS, YS, ANGLE);
}

draw_set_color(InnerColor) ;
draw_text_transformed(X, Y, TEXT, XS, YS, ANGLE);