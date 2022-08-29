attribute highp vec4 POSITION;
attribute highp vec2 TEXCOORD0;

varying mediump vec2 vTexCoord0;

#ifdef MORE_TEXCOORDS
varying mediump vec2 vTexCoord1;
varying mediump vec2 vTexCoord2;
varying mediump vec2 vTexCoord3;
varying mediump vec2 vTexCoord4;
varying mediump vec2 vTexCoord5;
varying mediump vec2 vTexCoord6;
varying mediump vec2 vTexCoord7;
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
