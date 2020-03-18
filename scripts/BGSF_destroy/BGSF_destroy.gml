if surface_exists(global.BGSF_surf){
	surface_free(global.BGSF_surf);
}

if buffer_exists(global.BGSF_buffer){
	buffer_delete(global.BGSF_buffer);
}