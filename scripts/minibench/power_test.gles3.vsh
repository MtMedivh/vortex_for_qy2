#version 300 es

in highp vec4 POSITION;
in highp vec2 TEXCOORD0;
in highp vec2 TEXCOORD1;

out mediump vec2 coord_tex0;
out mediump vec2 coord_tex1;

void main()
{
	coord_tex0 = TEXCOORD0;
	coord_tex1 = TEXCOORD1;
	
	gl_Position = POSITION;
}
