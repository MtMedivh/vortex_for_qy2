// Semi Energy Conservation Stetson-Harrison Constant
#define ECSH (1.0 / 3.1415926535897932384626433832795)

//D3D11 sampler state
SamplerState uSampler;

static const int Li = 2;	// constant 'Light count'

Texture2D Rd;		// @0 'Surface diffuse reflectance texture'
Texture2D Rs;		// @1 'Surface specular reflectance texture'
Texture2D Nm;		// @0 'Surface normal texture'
Texture2D As;		// @1 'Surface ambient specular texture'

cbuffer cb0 : register( b0 )
{
	float3 Cs;			// constant 'Specular color'
	float3 Cvn;			// constant 'Fresnel color'
	float3x3 LcolorA;	// 'Light color (array)'
	float r;			// constant 'Surface roughness'
};

struct PS_INPUT
{
	float2 T2d : TEXCOORD0;		// 'Surface texture coordinate'
	float3 N0w : NORMAL;		// 'Normal direction, before normalization and bump'
	float3 Tw : TANGENT;		// 'Tangent direction'
	float3 V0w : TEXCOORD1;		// 'View direction, before normalization'
	float3 L0w0 : TEXCOORD2;	// 'Light direction, before normalization'
	float3 L0w1 : TEXCOORD3;	// 'Light direction, before normalization'
};


struct PS_OUTPUT
{
	float4 vColour : SV_TARGET;
};



PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	float3  Vw = normalize( input.V0w );						// view_direction
	float3  Ns = Nm.Sample( uSampler, input.T2d).rgb * 2.0 - 1.0;		// sample_normal
	float3  Bw = normalize(cross(input.N0w, input.Tw));						// bitangent
	float3  Nw = normalize(Ns.x * input.Tw + Ns.y * Bw + Ns.z * input.N0w);	// normal_direction

	float Vn        = max(dot(Vw,  Nw), 0.0);							// v_dot_n
	float oneMinusR = 1.0 - r;
	float GvnDenom  = (r + oneMinusR * Vn);

	// Light loop
	float3 Cdd = float3(0.0, 0.0, 0.0);
	float3 Csd = float3(0.0, 0.0, 0.0);

	{
		float3 Lw = normalize(input.L0w0);				// light_direction
		float3 Hw = normalize(Lw + Vw);				// half_direction
		float Ln = max(dot(Lw, Nw), 0.0);			// l_dot_n
		float Hn = dot(Hw, Nw);						// h_dot_n
		float Zhn0 = (1.0 - oneMinusR * Hn * Hn);	//  > directional_zenith
		float GlnDenom = (r + oneMinusR * Ln);
		float ZhnDenom = Zhn0 * Zhn0;
		float temp = (Ln * r) / (GvnDenom * GlnDenom * ZhnDenom);
		float3 D = float3( temp, temp, temp );// specular_directional
		float LnLO = Ln;							// version of l_dot_n

		if(dot(input.L0w0, input.N0w) >= 0.0)
		{	// Triangle must face the light
			Cdd += LcolorA[0] * float3(LnLO,LnLO,LnLO);		// delta_diffuse_color
			Csd += LcolorA[0] * D;					// delta_specular_color
		}
	}
	{
		float3 Lw = normalize(input.L0w1);				// light_direction
		float3 Hw = normalize(Lw + Vw);				// half_direction
		float Ln = max(dot(Lw, Nw), 0.0);			// l_dot_n
		float Hn = dot(Hw, Nw);						// h_dot_n
		float Zhn0 = (1.0 - oneMinusR * Hn * Hn);	//  > directional_zenith
		float GlnDenom = (r + oneMinusR * Ln);
		float ZhnDenom = Zhn0 * Zhn0;
		float temp = (Ln * r) / (GvnDenom * GlnDenom * ZhnDenom);
		float3 D = float3( temp, temp, temp );// specular_directional
		float LnLO = Ln;							// version of l_dot_n

		if(dot(input.L0w1, input.N0w) >= 0.0)
		{	// Triangle must face the light
			Cdd += LcolorA[1] * float3(LnLO,LnLO,LnLO);		// delta_diffuse_color
			Csd += LcolorA[1] * D;					// delta_specular_color
		}
	}



	float3 R = 2.0 * Vn * Nw - Vw;					// reflection_floattor
	float3 Casc = As.Sample( uSampler, R.xy).rgb;	// specular_ambient_factor
	float3 Crd = Rd.Sample( uSampler, input.T2d).rgb;		// diffuse_surface_factor
	float3 Crs = Rs.Sample( uSampler, input.T2d).rgb;		// specular_surface_factor
	float Fnl = pow(1.0 - Vn, 5.0);					// Fresnel coefficient
	float3 Svn = Cs + Cvn * float3(Fnl,Fnl,Fnl);			// spectral_specular_factor

	float3 CrsSvn = Crs * Svn;

	output.vColour = float4( ((Cdd * Crd) + CrsSvn*(Casc+ECSH * Csd)).rgb, 1.0 );

	return output;
}
