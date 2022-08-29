
struct VS_INPUT
{
	float4 vPosition : POSITION;
	float4 vTexCoord0 : TEXCOORD0;
 };


struct VS_OUTPUT
{
	float4 varying1 : TEXCOORD0;

	float4 vPosition : SV_POSITION;
};



VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;
	output.vPosition = input.vPosition;
	output.varying1 = input.vTexCoord0*3.0+1.0;
	
	return output;
}
