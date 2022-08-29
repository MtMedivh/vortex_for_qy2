
struct PS_INPUT
{
	float4 varying1 : TEXCOORD0;
	float4 varying2 : TEXCOORD1;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};


PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;

	float2 t1 = input.varying1.xy;          
	t1.y = t1.x*t1.y;	
	t1.x = t1.x*t1.x;	
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
	t1 = t1*t1+t1;		
		
	output.vColour = float4(t1, t1);	
	
	return output;
}
