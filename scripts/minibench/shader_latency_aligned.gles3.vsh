#version 300 es

in highp vec4 POSITION;

out highp vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = vec2(0.000001, 0.000001);
}
