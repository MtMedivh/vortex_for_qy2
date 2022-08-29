#define vec4 float4
#define vec3 float3
#define vec2 float2

struct PS_INPUT
{
	TYPE varying0 : TEXCOORD0;
	TYPE varying1 : TEXCOORD1;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};


PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	TYPE t0 = input.varying0;
	TYPE t1 = input.varying1;
	PROCESS
	output.vColour = OUTPUT;
	return output;
}
