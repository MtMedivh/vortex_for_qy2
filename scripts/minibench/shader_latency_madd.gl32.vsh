#version 330

in highp vec4 POSITION;
in highp vec2 TEXCOORD0;

out highp float varying1;

void main()
{
	gl_Position = POSITION;
	varying1 = TEXCOORD0.x;
}
