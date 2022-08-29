#version 330

uniform sampler2D uSampler0; // %binding=0
uniform sampler2D uSampler1; // %binding=1
uniform sampler2D uSampler2; // %binding=2
uniform sampler2D uSampler3; // %binding=3
uniform sampler2D uSampler4; // %binding=4
uniform sampler2D uSampler5; // %binding=5
uniform sampler2D uSampler6; // %binding=6
uniform sampler2D uSampler7; // %binding=7

in vec2 vTexCoord0;

#ifdef MORE_TEXCOORDS
in vec2 vTexCoord1;
in vec2 vTexCoord2;
in vec2 vTexCoord3;
in vec2 vTexCoord4;
in vec2 vTexCoord5;
in vec2 vTexCoord6;
in vec2 vTexCoord7;
#endif

#define COORD0 vTexCoord0
#define COORD1 vTexCoord1
#define COORD2 vTexCoord2
#define COORD3 vTexCoord3
#define COORD4 vTexCoord4
#define COORD5 vTexCoord5
#define COORD6 vTexCoord6
#define COORD7 vTexCoord7

#define TEX0 uSampler0
#define TEX1 uSampler1
#define TEX2 uSampler2
#define TEX3 uSampler3
#define TEX4 uSampler4
#define TEX5 uSampler5
#define TEX6 uSampler6
#define TEX7 uSampler7

out vec4 FragColor;

vec4 TEXTURE(lowp sampler2D inSampler, vec2 inTexCoord)
{
  return texture(inSampler, inTexCoord);
}

vec4 OUTPUT = vec4(0.0);

vec4 Texture8(vec2 inTexCoord)
{
	vec4 tmp = vec4(0.0);
	tmp += TEXTURE( uSampler0, inTexCoord );
	tmp += TEXTURE( uSampler1, inTexCoord );
	tmp += TEXTURE( uSampler2, inTexCoord );
	tmp += TEXTURE( uSampler3, inTexCoord );
	tmp += TEXTURE( uSampler4, inTexCoord );
	tmp += TEXTURE( uSampler5, inTexCoord );
	tmp += TEXTURE( uSampler6, inTexCoord );
	tmp += TEXTURE( uSampler7, inTexCoord );
	return tmp;
}

void main()
{ 
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
	
  FragColor = OUTPUT / NUM_TEXTURES;
}
