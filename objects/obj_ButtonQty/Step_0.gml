/// @description VISIBLE UPDATE


myHotzone = point_in_rectangle(mouse_x, mouse_y, Hotzone_x1, Hotzone_y1, Hotzone_x2, Hotzone_y2);

if (myHotzone and G.gameState == GameState.BuildingTransaction)
	visible = true;
else visible = false;
