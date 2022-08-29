#version 330

in vec4 POSITION;
in vec2 TEXCOORD0;

out vec2 vTexCoord0;

#ifdef MORE_TEXCOORDS
out vec2 vTexCoord1;
out vec2 vTexCoord2;
out vec2 vTexCoord3;
out vec2 vTexCoord4;
out vec2 vTexCoord5;
out vec2 vTexCoord6;
out vec2 vTexCoord7;
#endif

void main()
{
	gl_Position = POSITION;
	vTexCoord0  = TEXCOORD0;
	
#ifdef MORE_TEXCOORDS
	vTexCoord1 = TEXCOORD0 + 0.125;
	vTexCoord2 = TEXCOORD0 + 0.250;
	vTexCoord3 = TEXCOORD0 + 0.375;
	vTexCoord4 = TEXCOORD0 + 0.500;
	vTexCoord5 = TEXCOORD0 + 0.625;
	vTexCoord6 = TEXCOORD0 + 0.750;
	vTexCoord7 = TEXCOORD0 + 0.875;
#endif
}
