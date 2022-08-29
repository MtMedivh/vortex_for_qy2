#version 300 es
#line 0
in highp vec4 POSITION;
in highp vec4 TEXCOORD0;

out PRECISION TYPE varying0;
out PRECISION TYPE varying1;

void main()
{
	varying0 = TEXCOORD0.SUFFIX;
	varying1 = TEXCOORD0.SUFFIX+0.1;
	gl_Position = POSITION;
}
