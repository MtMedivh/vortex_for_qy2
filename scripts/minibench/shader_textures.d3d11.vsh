struct VS_INPUT
{
	float4 vPosition : POSITION;
	float2 vTexCoord : TEXCOORD0;
};

struct VS_OUTPUT
{
	float2 vTexCoord0 : TEXCOORD0;
#ifdef MORE_TEXCOORDS
	float2 vTexCoord1 : TEXCOORD1;
	float2 vTexCoord2 : TEXCOORD2;
	float2 vTexCoord3 : TEXCOORD3;
	float2 vTexCoord4 : TEXCOORD4;
	float2 vTexCoord5 : TEXCOORD5;
	float2 vTexCoord6 : TEXCOORD6;
	float2 vTexCoord7 : TEXCOORD7;
#endif
	float4 vPosition : SV_POSITION;
};

VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = input.vPosition;
	output.vTexCoord0 = input.vTexCoord;
#ifdef MORE_TEXCOORDS
	output.vTexCoord1 = input.vTexCoord + 0.125;
	output.vTexCoord2 = input.vTexCoord + 0.250;
	output.vTexCoord3 = input.vTexCoord + 0.375;
	output.vTexCoord4 = input.vTexCoord + 0.500;
	output.vTexCoord5 = input.vTexCoord + 0.625;
	output.vTexCoord6 = input.vTexCoord + 0.750;
	output.vTexCoord7 = input.vTexCoord + 0.875;
#endif
	return output;
}
