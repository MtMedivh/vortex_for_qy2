
struct VS_INPUT
{
	float4 vPosition : POSITION;
};


struct VS_OUTPUT
{
	float2 vTexCoord : TEXCOORD0;

	float4 vPosition : SV_POSITION;
};



VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = input.vPosition;
	output.vTexCoord = (input.vPosition.xy + 1.0 ) * 0.5;

	return output;
}
