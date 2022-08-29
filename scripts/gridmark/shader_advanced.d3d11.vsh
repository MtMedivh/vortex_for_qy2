
struct VS_INPUT
{
	float3 vPosition : POSITION;
	float2 vTexCoord0: TEXCOORD0;
};


struct VS_OUTPUT
{
	float2 T2d : TEXCOORD0;
	float3 N0w : NORMAL;
	float3 Tw : TANGENT;
	float3 V0w : TEXCOORD1;
	float3 L0w0 : TEXCOORD2;
	float3 L0w1 : TEXCOORD3;

	float4 vPosition : SV_POSITION;
};



VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	output.vPosition = float4( input.vPosition, 1.0 );

	output.N0w = input.vPosition;
	output.Tw = input.vPosition;
	output.T2d = input.vTexCoord0;
	output.V0w = input.vPosition;
	output.L0w0 = float3( 1.0, 1.0, 0.0 );
	output.L0w1 = float3( 1.0, -1.0, 0.0 );

	return output;
}
