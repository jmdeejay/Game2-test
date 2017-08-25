/// @description

if (!surface_exists(surf))
    surf = surface_create(32,249);

surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_sprite_ext(sprite_index, image_index, 0, 0-tempY, 1, 1, 0, c_black, tempAlpha);
surface_reset_target();

draw_surface(surf, xstart, ystart);