
struct PS_INPUT
{
	float2 vTexCoord0 : TEXCOORD0;
	float2 vTexCoord1 : TEXCOORD1;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};


Texture2D uTexture0;
Texture2D uTexture1;
SamplerState uSampler0;
SamplerState uSampler1;



PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	output.vColour = uTexture0.Sample( uSampler0, input.vTexCoord0 ) + uTexture1.Sample( uSampler1, input.vTexCoord1 );

	return output;
}
