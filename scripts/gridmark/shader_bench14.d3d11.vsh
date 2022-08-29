
struct VS_INPUT
{
	float4 vPosition : POSITION;
	float4 vTexCoord0 : TEXCOORD0;
	float4 vTexCoord1 : TEXCOORD1;
 };


struct VS_OUTPUT
{
	float2 varying1 : TEXCOORD0;
	float2 varying2 : TEXCOORD1;

	float4 vPosition : SV_POSITION;
};



VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;
	output.vPosition = input.vPosition;
	output.varying1 = input.vTexCoord0.xy*3.0+1.0;
	output.varying2 = input.vTexCoord1.xy*4.0+2.0;	
	
	return output;
}
