/// @description SHOW CASH / BARRELS
myXpos = camera_get_view_x(view_camera[0]);
myYpos = camera_get_view_y(view_camera[0]);
draw_set_color(COLOR_BLACK_DARK);
draw_set_font(fnt_CodersCrux12);
draw_set_halign(fa_left);
draw_text(myXpos + 25, myYpos + 25, "Cash on Hand: " + printCash);
draw_text(myXpos + 25, myYpos + 40, "Barrels: " + string(G.CurrentBarrels) + @"/" + string(G.MaxBarrels));