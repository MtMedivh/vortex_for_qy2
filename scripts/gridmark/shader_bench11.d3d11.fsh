
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

	float4 t1 = input.varying1;
	float4 t2 = input.varying2;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
	t1 = t1*(1.0/t1.x)+t2;
	t2 = t2*(1.0/t2.x)+t1;
		  
	output.vColour = t2;	
	
	return output;
}
