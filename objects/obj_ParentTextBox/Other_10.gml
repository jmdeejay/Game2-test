/// @description Resize Box
// Invoked by: ???

draw_set_font(myFont);
var _width = string_width_ext(myMessage, -1, -1);
var _height = string_height_ext(myMessage, -1, -1);

myWidth = _width + myPadding;
myHeight = _height + myPadding;