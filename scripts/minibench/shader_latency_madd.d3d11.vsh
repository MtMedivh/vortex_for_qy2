
struct VS_INPUT
{
	float4 vPosition : POSITION;
	float2 vTexCoord : TEXCOORD0;
};


struct VS_OUTPUT
{
	float varying1 : TEXCOORD0;

	float4 vPosition : SV_POSITION;
};


VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = input.vPosition;
	output.varying1 = input.vTexCoord.x;
	return output;
}