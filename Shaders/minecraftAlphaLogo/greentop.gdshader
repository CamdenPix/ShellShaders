shader_type spatial;
render_mode unshaded;
//taken from "Integer Hash - III" by iq on Shadertoy
float hash(uvec2 x)
{
    uvec2 q = 1103515245U * ( (x>>1U) ^ (x.yx) );
    uint  n = 1103515245U * ( (q.x  ) ^ (q.y>>3U) );
    return float(n) * (1.0/float(0xffffffffU));
}

uniform float index;
uniform float totalShells;
uniform float shellHeight;
uniform float heightAttenuation;
const float density = 32.;
const float rngDensityMultiplier = .8;
const vec3 color1 = vec3(.275, .55, .12);
const vec3 color2 = vec3(.63, .785, .39);

void vertex() {
	vec3 normal = normalize(VERTEX); //get Vertex Normal
	float percentOfHeight = index/totalShells; //find how far the shell needs to be extruded
	percentOfHeight = pow(percentOfHeight, heightAttenuation); //less shells at the base, more at the top
	float height = percentOfHeight*shellHeight;
	VERTEX.xyz += normal*vec3(height); //extruded shell while keeping the shape
}

void fragment() {
	float rng = hash(uvec2(uint(UV.x*density),uint(UV.y*density/4.)));  //hash the UV for random texture
	rng = pow(rng, rngDensityMultiplier);
	
	float thickness = 1.;
	float percentage = (index/totalShells); //percent of height
	if(rng > percentage || index == 0.){
		vec3 color;
		//Average out colors provided by user in RGB colorspace.
		color.r = (color2.r-color1.r)*percentage+color1.r;
		color.g = (color2.g-color1.g)*percentage+color1.g;
		color.b = (color2.b-color1.b)*percentage+color1.b;
		ALBEDO.xyz=color;
	} else{
		discard;
	}
}
