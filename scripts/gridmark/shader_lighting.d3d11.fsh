
struct PS_INPUT
{
	float3 vColour : COLOR0;
};


struct PS_OUTPUT
{
	float4 vColour : SV_TARGET;
};



PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	output.vColour = float4( input.vColour, 0.0 );

	return output;
}
