struct PS_INPUT
{
	float varying1 : TEXCOORD0;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};



PS_OUTPUT main( PS_INPUT input )															 
{	
	PS_OUTPUT output;																					 
	float t1 = input.varying1;
	for(int j = 0; j < 10; j++)
	{
		for(int i = 0; i < INNER_LOOP; i++)
		{
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
		}
	}
	output.vColour = t1.xxxx;
	return output;
}