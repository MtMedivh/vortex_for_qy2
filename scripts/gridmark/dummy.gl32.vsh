#version 330

in highp vec4 POSITION;

out mediump vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = (POSITION.xy+1.0)/2.0;
}
