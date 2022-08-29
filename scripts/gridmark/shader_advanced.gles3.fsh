#version 300 es
// Semi Energy Conservation Stetson-Harrison Constant
#define ECSH (1.0 / 3.1415926535897932384626433832795)

// Set default precision for float as hight
precision highp float;

const int           Li = 2;  // constant 'Light count'

uniform sampler2D   Rd; // %binding=0 'Surface diffuse reflectance texture'
uniform sampler2D   Rs; // %binding=1 'Surface specular reflectance texture'
uniform sampler2D   Nm; // %binding=0 'Surface normal texture'
uniform sampler2D   As; // %binding=1 'Surface ambient specular texture'

layout(std140) uniform cb0 { // %binding=0
	lowp vec3   Cs;      // constant 'Specular color'
	lowp vec3   Cvn;     // constant 'Fresnel color'
	lowp mat3   LcolorA; // 'Light color (array)'
	float       r;       // constant 'Surface roughness'
};

in vec2        T2d;     // 'Surface texture coordinate'
in vec3        N0w;     // 'Normal direction, before normalization and bump'
in vec3        Tw;      // 'Tangent direction'
in vec3        L0w[Li]; // 'Light direction, before normalization'
in vec3        V0w;     // 'View direction, before normalization'

out highp vec4 FragColor;

void main( void )
{
	vec3  Vw        = normalize(V0w);                                // view_direction
	vec3  Ns        = texture(Nm, T2d).xyz * 2.0 - 1.0;            // sample_normal
	vec3  Bw        = normalize(cross(N0w, Tw));                     // bitangent
	vec3  Nw        = normalize(Ns.x * Tw + Ns.y * Bw + Ns.z * N0w); // normal_direction

	float Vn        = max(dot(Vw,  Nw), 0.0);                        // v_dot_n
	float oneMinusR = 1.0 - r;
	float GvnDenom  = (r + oneMinusR * Vn);

	// Light loop
	lowp vec3 Cdd   = vec3(0.0, 0.0, 0.0);
	lowp vec3 Csd   = vec3(0.0, 0.0, 0.0);

	for (int i = 0; i < Li; i++)
	{
		vec3 L0wi = L0w[i];
		vec3  Lw         = normalize(L0wi);                // light_direction
		vec3  Hw         = normalize(Lw + Vw);             // half_direction
		float Ln         = max(dot(Lw, Nw), 0.0);          // l_dot_n
		float Hn         = dot(Hw, Nw);                    // h_dot_n
		float Zhn0       = (1.0 - oneMinusR * Hn * Hn);    //  > directional_zenith
		float GlnDenom   = (r + oneMinusR * Ln);
		float ZhnDenom   = Zhn0 * Zhn0;
		lowp  vec3  D    = vec3((Ln * r) / (GvnDenom * GlnDenom * ZhnDenom));// specular_directional
		lowp  float LnLO = Ln;                       // lowp version of l_dot_n

		if(dot(L0wi, N0w) >= 0.0)
		{	// Triangle must face the light
			Cdd             += LcolorA[i] * vec3(LnLO);  // delta_diffuse_color
			Csd             += LcolorA[i] * D;           // delta_specular_color
		}
	}

	vec3         R    = N0w*N0w - V0w*V0w; // the original R variable was based on an undefined value (coming from Bw)
	//vec3         R    = 2.0 * Vn * Nw - Vw;       // reflection_vector
	lowp vec3    Casc = texture(As, R.xy).xyz;  // specular_ambient_factor
	lowp vec3    Crd  = texture  (Rd, T2d).xyz; // diffuse_surface_factor
	lowp vec3    Crs  = texture  (Rs, T2d).xyz; // specular_surface_factor
	lowp float   Fnl  = pow(1.0 - Vn, 5.0);       // Fresnel coefficient
	lowp vec3    Svn  = Cs + Cvn * vec3(Fnl);     // spectral_specular_factor

	lowp vec3 CrsSvn = Crs * Svn;

	FragColor = vec4( (Cdd * Crd) + CrsSvn*(Casc+ECSH * Csd), 1.0 );
}
