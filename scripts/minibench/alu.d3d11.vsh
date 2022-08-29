#define vec4 float4
#define vec3 float3
#define vec2 float2

struct VS_INPUT
{
	float4 vPosition : POSITION;
	float4 vTexCoord : TEXCOORD0;
};


struct VS_OUTPUT
{
	TYPE varying0 : TEXCOORD0;
	TYPE varying1 : TEXCOORD1;

	float4 vPosition : SV_POSITION;
};



VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = input.vPosition;
	output.varying0 = input.vTexCoord.SUFFIX;
	output.varying1 = input.vTexCoord.SUFFIX+0.1;
	return output;
}
