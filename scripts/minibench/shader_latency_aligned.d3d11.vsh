struct VS_INPUT
{
	float4 vPosition : POSITION;
};


struct VS_OUTPUT
{
	float4 vPosition : SV_POSITION;
};


VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = input.vPosition;
	return output;
}
