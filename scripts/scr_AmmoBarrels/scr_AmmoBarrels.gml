///balls_in_cylinder(ball_diameter,cylinder_diameter,cylinder_height)

var ball_radius = argument0/2,
    cylinder_radius = argument1/2,
    cylinder_height = argument2;
var Vc = pi * (cylinder_radius * cylinder_radius) * cylinder_height;
var Vs = (4/3) * (pi * (ball_radius * ball_radius * ball_radius));
//arr[0] = Vc;
//arr[1] = Vs;
//show_debug_message(arr)
return floor((Vc*.74048)/Vs);