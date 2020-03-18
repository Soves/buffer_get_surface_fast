///@arg surface

var _surf = argument0;

var _new_w = surface_get_width(_surf) div 4;
var _new_h = surface_get_height(_surf);

if !buffer_exists(global.BGSF_buffer){
	global.BGSF_buffer = buffer_create(_new_w*4*_new_h, buffer_fast, 1);
}

if !surface_exists(global.BGSF_surf) || (_new_w != global.BGSF_surf_w || _new_h != global.BGSF_surf_h){
	global.BGSF_surf_w = _new_w;
	global.BGSF_surf_h = _new_h;
	global.BGSF_surf = surface_create(_new_w,_new_h);
	
	buffer_delete(global.BGSF_buffer);
	global.BGSF_buffer = buffer_create(_new_w*4*_new_h, buffer_fast, 1);
}

surface_set_target(global.BGSF_surf);
shader_set(BGSF_shader);
		
var _tex = surface_get_texture(_surf);
shader_set_uniform_f( global.BGSF_uniform_texel, texture_get_texel_width(_tex));
		
