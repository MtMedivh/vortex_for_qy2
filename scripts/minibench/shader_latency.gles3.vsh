#version 300 es

in highp vec4 POSITION;

out mediump vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = vec2(0.0);
}
