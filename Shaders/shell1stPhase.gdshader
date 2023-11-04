shader_type spatial;
render_mode unshaded;

//taken from "Integer Hash - III" by iq on Shadertoy
float hash(uvec2 x)
{
    uvec2 q = 1103515245U * ( (x>>1U) ^ (x.yx) );
    uint  n = 1103515245U * ( (q.x  ) ^ (q.y>>3U) );
    return float(n) * (1.0/float(0xffffffffU));
}

void fragment() {
	float rng = hash(uvec2(uint(UV.x*600.),uint(UV.y*600.)));
	if(rng > NODE_POSITION_WORLD.y){
		ALBEDO.xyz=vec3(0., NODE_POSITION_WORLD.y, 0.);
	} else{
		//ALBEDO.xyz=vec3(0., 0., 0.);
		ALPHA = 0.;
	}
}
