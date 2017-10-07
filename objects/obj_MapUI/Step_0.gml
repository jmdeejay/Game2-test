/// @description NAME BOOLS

var _viewx = camera_get_view_x(view_camera[0]) + xstart;
var _viewy = camera_get_view_y(view_camera[0]) + ystart;

if (_viewx < 175 and _viewy < 200)
	VaioDraw = true;
else
	VaioDraw = false;

if (_viewx < 400 and _viewy < 200)
	DomoDraw = true;
else
	DomoDraw = false;
	
if (_viewx > 200 and _viewy < 200)
	ChirDraw = true;
else
	ChirDraw = false;
	
if (_viewx < 380 and _viewy > 55)
	ZandDraw = true;
else
	ZandDraw = false;
	
if (_viewx < 200 and _viewy > 185)
	BarcDraw = true;
else
	BarcDraw = false;

if (_viewx < 380 and _viewy > 220)
	SyrrDraw = true;
else
	SyrrDraw = false;
	
if (_viewx > 230 and _viewy > 110)
	KandDraw = true;
else
	KandDraw = false;