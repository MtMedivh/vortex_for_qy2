#version 330

in highp vec4 POSITION;
in highp vec2 TEXCOORD0;

out mediump vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = TEXCOORD0;
}
