attribute highp vec4 POSITION;
attribute highp vec2 TEXCOORD0;
attribute highp vec2 TEXCOORD1;

varying mediump vec2 coord_tex0;
varying mediump vec2 coord_tex1;

void main()
{
	coord_tex0 = TEXCOORD0;
	coord_tex1 = TEXCOORD1;
	
	gl_Position = POSITION;
}
