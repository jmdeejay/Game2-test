/// @description SHOW CASH / BARRELS

draw_set_color(COLOR_BLACK_DARK);
draw_set_font(fnt_CodersCrux12);
draw_set_halign(fa_left);
draw_text(25, 25, "Cash on Hand: " + printCash);
draw_text(25, 40, "Barrels: " + string(G.CurrentBarrels) + @"/" + string(G.MaxBarrels));
draw_text(25, 55, "Crew Count: " + string(ds_list_size(obj_MyCaptain.myCrewManifest))); // Should equal 10 at start
draw_text(25, 70, "Ship Readiness: " + string(obj_MyShip.ReadyPercent));