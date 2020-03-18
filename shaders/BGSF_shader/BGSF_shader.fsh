//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float texel_w;

void main()
{	
	vec2 uv = v_vTexcoord * vec2(4.,1.);
	
    gl_FragColor.b = texture2D( gm_BaseTexture, uv).r;
	gl_FragColor.g = texture2D( gm_BaseTexture, uv+texel_w).r;
	gl_FragColor.r = texture2D( gm_BaseTexture, uv+texel_w*2.).r;
	gl_FragColor.a = texture2D( gm_BaseTexture, uv+texel_w*3.).r;
	
}
