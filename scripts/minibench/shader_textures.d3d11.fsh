
struct PS_INPUT
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
};

#define COORD0 input.vTexCoord0
#define COORD1 input.vTexCoord1
#define COORD2 input.vTexCoord2
#define COORD3 input.vTexCoord3
#define COORD4 input.vTexCoord4
#define COORD5 input.vTexCoord5
#define COORD6 input.vTexCoord6
#define COORD7 input.vTexCoord7

#define TEX0 uTexture0
#define TEX1 uTexture1
#define TEX2 uTexture2
#define TEX3 uTexture3
#define TEX4 uTexture4
#define TEX5 uTexture5
#define TEX6 uTexture6
#define TEX7 uTexture7

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};

Texture2D uTexture0;
Texture2D uTexture1;
Texture2D uTexture2;
Texture2D uTexture3;
Texture2D uTexture4;
Texture2D uTexture5;
Texture2D uTexture6;
Texture2D uTexture7;
SamplerState uSampler0;


float4 TEXTURE(Texture2D inTexture, float2 inTexCoord)
{
	return inTexture.Sample( uSampler0, inTexCoord );
}

//float4 OUTPUT = float4(0.0,0.0,0.0,0.0);
#ifdef MORE_TEXCOORDS
float4 Texture8(float2 inTexCoord)
{
	float4 tmp = TEXTURE( uTexture0, inTexCoord );
	tmp += TEXTURE( uTexture1, inTexCoord );
	tmp += TEXTURE( uTexture2, inTexCoord );
	tmp += TEXTURE( uTexture3, inTexCoord );
	tmp += TEXTURE( uTexture4, inTexCoord );
	tmp += TEXTURE( uTexture5, inTexCoord );
	tmp += TEXTURE( uTexture6, inTexCoord );
	tmp += TEXTURE( uTexture7, inTexCoord );
	return tmp;
}
#endif
PS_OUTPUT main( PS_INPUT input )
{ 
	PS_OUTPUT output;
	float4 OUTPUT = float4(0.0,0.0,0.0,0.0);
	//OUTPUT = uTexture0.Sample( uSampler0, input.vTexCoord0 );
	//OUTPUT.xy = input.vTexCoord0;

	TEXTURE_1
	TEXTURE_2
	TEXTURE_3
	TEXTURE_4
	TEXTURE_5
	TEXTURE_6
	TEXTURE_7
	TEXTURE_8

	TEXTURE_16
	TEXTURE_32
	TEXTURE_48
	TEXTURE_64

	output.vColour = OUTPUT / NUM_TEXTURES;
	return output;
}
