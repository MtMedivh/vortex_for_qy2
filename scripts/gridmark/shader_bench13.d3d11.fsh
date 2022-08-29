
struct PS_INPUT
{
	float4 varying1 : TEXCOORD0;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};


PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	float2 t0 = input.varying1.xy;          
		
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0; 

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0; 

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0; 

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0; 

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;
	t0 = t0*t0+t0; t0 = t0*t0+t0;

	output.vColour = float4(t0, t0);	
	
	return output;
}
