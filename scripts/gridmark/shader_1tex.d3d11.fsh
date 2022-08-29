
struct PS_INPUT
{
	float2 vTexCoord : TEXCOORD0;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};


Texture2D uTexture;
SamplerState uSampler;



PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	output.vColour = uTexture.Sample( uSampler, input.vTexCoord );

	return output;
}
