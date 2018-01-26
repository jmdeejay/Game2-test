/// @description DRAW SELF

draw_sprite(myImage, image_index, x, y);


// Draw Card Title
var _title_X1 = bbox_left + xOffset;
var _title_Y1 = bbox_top + yOffset;
var _width = bbox_right - (2 * xOffset);

draw_set_font(titleFont);
draw_set_halign(fa_center);
draw_text_outline_ext(_title_X1, _title_Y1, myTitle, _width, 4, titleColor, outlineColor, 1, 2);

draw_set_font(bodyFont);
draw_set_halign(fa_left);
draw_text_outline_ext(_title_X1, _title_Y1 + 20, myDescription, _width, 4, bodyColor, outlineColor, 1, 1);

draw_set_halign(fa_left);
draw_set_font(fnt_CodersCrux12);