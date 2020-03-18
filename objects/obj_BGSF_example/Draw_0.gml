/// @description Insert description here
// You can write your code in this editor
if !surface_exists(surf){
	surf = surface_create(room_width, room_height);
	
	surface_set_target(surf);
		for (var xx = 0; xx < room_width; xx++){
			for (var yy = 0; yy < room_height; yy++){
					draw_point_color(xx,yy,choose(c_black,c_red,c_purple));
			}
		}
	surface_reset_target();
	
}else{
	//signle surface call
	buffer_get_surface_fast( surf);
	//draw_surface( global.BGSF_surf, 0,0);
	//--------------------- 
	//batches of buffers for better performance on multiple calls
	/*
	BGSF_start_batch(surf);
	
		for(var i = 0; i < 5; i++){
			BGSF_get_surface_in_batch(surf);
			
			//global.BGSF_buffer contains the data inside this loop
		}
	
	BGSF_end_batch();
	*/
	//---------------------
	// SLOW AND OLD METHOD
	
	/*
	if !buffer_exists(global.BGSF_buffer){
		global.BGSF_buffer = buffer_create(surface_get_width(surf)*surface_get_height(surf)*4, buffer_grow, 1);
	}
	buffer_get_surface( global.BGSF_buffer, surf, 0, 0, 0);
	*/
	
}