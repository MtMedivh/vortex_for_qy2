#version 330

in vec4 POSITION;

out vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = vec2(0.0);
}
