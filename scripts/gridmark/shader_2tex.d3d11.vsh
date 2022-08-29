
struct VS_INPUT
{
	float4 vPosition : POSITION;
	float2 vTexCoord0 : TEXCOORD0;
	float2 vTexCoord1 : TEXCOORD1;
 };


struct VS_OUTPUT
{
	float2 vTexCoord0 : TEXCOORD0;
	float2 vTexCoord1 : TEXCOORD1;

	float4 vPosition : SV_POSITION;
};



VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = input.vPosition;
	output.vTexCoord0 = input.vTexCoord0;
	output.vTexCoord1 = input.vTexCoord1;

	return output;
}
