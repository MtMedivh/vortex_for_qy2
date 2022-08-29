
struct PS_INPUT
{
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};


PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	output.vColour = float4( 0.0, 0.0, 0.5, 1.0 );

	return output;
}
