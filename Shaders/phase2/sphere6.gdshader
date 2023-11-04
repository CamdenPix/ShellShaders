shader_type spatial;
render_mode unshaded;

//taken from "Integer Hash - III" by iq on Shadertoy
float hash(uvec2 x)
{
    uvec2 q = 1103515245U * ( (x>>1U) ^ (x.yx) );
    uint  n = 1103515245U * ( (q.x  ) ^ (q.y>>3U) );
    return float(n) * (1.0/float(0xffffffffU));
}

uniform float dis = .25;
uniform float shellHeight = 1.;
void vertex() {
	vec3 normal = normalize(VERTEX);
	
	VERTEX.xyz += normal*vec3(dis*shellHeight);
	
}

void fragment() {
	float rng = hash(uvec2(uint(UV.x*300.),uint(UV.y*300.)));
	if(rng > dis){
		ALBEDO.xyz=vec3(dis, 0., 0.);
	} else{
		//ALBEDO.xyz=vec3(0., 0., 0.);
		ALPHA = 0.;
	}
}
