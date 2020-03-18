///@arg surface

var _surf = argument0;

draw_clear_alpha(0,0);
draw_surface(_surf,0,0); //any draw call that deosn't reset vertex batch
		
buffer_get_surface(global.BGSF_buffer, global.BGSF_surf, buffer_surface_copy, 0, 0);
