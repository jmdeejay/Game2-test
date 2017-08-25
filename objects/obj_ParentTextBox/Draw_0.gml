/// @description DRAW RECT

if (!surface_exists(surf)) {
    surf = surface_create(myWidth+ (2*myPadding), myHeight+(2*myPadding)+ 8);
    if (surface_exists(surf)) {
        surface_set_target(surf);
		draw_clear_alpha(c_black, 0);
		draw_set_alpha(0.5);
		draw_roundrect_color(0, 0, (myWidth+myPadding), (myHeight+myPadding + 8), COLOR_BLACK_LIGHT, COLOR_BLACK_DARK, false);
		draw_set_alpha(1);
		draw_roundrect_color(0, 0, (myWidth+myPadding), (myHeight+myPadding + 8), COLOR_WHITE_LIGHT, COLOR_WHITE_DARK, true);
		draw_set_font(myFont);
		draw_set_color(c_white);
		draw_text_ext(myPadding, myPadding, myMessage, -1, myWidth - (2*myPadding))
        surface_reset_target();
    }
}
if (surface_exists(surf)) {
    draw_surface_ext(surf, x, y, 1, 1, 0, c_white, 1.0);
}

