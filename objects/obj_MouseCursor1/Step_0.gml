/// @description MOUSE CURSOR

x = (window_view_mouse_get_x(0) - view_xport[0]) *  display_get_gui_width() / view_wport[0];
y = (window_view_mouse_get_y(0) - view_yport[0]) * display_get_gui_height() / view_hport[0];

