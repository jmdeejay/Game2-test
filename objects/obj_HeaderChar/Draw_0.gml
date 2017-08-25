/// @description DRAW CARD
var padding, ld,rd,bd,td;

ld = x - sprite_width/2 *(1 - dsin(yrot));
rd = x + sprite_width/2 *(1 - dsin(yrot));
td = y - sprite_height/2;
bd = y + sprite_height/2;
padding = 8 * dsin(yrot)

if (isDropShadow)
{
	draw_sprite_ext(sprite_index, image_index, ld + xDrop, td + yDrop, image_xscale, image_yscale, 0, c_black, 0.65);
	if(xDrop <= 5)
		xDrop += 0.25;
	if (yDrop <= 5)
		yDrop += 0.25;
}

draw_set_color(c_white)
draw_primitive_begin_texture(pr_trianglestrip,sprite_get_texture(sprite_index,0));

draw_vertex_texture(ld,td - padding,0,0)
draw_vertex_texture(ld,bd + padding,0,1)
draw_vertex_texture(x,y,.5,.5)
draw_vertex_texture(rd,bd - padding,1,1)
draw_vertex_texture(rd,td + padding,1,0)
draw_vertex_texture(x,y,.5,.5)
draw_vertex_texture(ld,td - padding,0,0)

draw_primitive_end();


