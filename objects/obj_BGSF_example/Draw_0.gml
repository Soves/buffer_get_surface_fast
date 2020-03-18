/// @description Insert description here
// You can write your code in this editor
if !surface_exists(surf){
	surf = surface_create(room_width, room_height);
	
	surface_set_target(surf);
		draw_rectangle_color( 0, 0, room_width, room_height, c_red, c_blue, c_red, c_red, false);
	surface_reset_target();
	
}else{
	//signle surface call
	//buffer_get_surface_fast( surf);
	
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