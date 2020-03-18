
global.BGSF_surf = -1; //surface is stroed globally so it can be re-used if surface is the same size
global.BGSF_surf_w = -1; //used to detect change in surface sies
global.BGSF_surf_h = -1; //used to detect change in surface sies

global.BGSF_buffer = -1; //buffer is stroed globally so it can be re-used if surface is the same size

global.BGSF_uniform_texel = shader_get_uniform(BGSF_shader,"texel_w");