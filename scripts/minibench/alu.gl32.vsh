#version 330

in vec4 POSITION;
in vec4 TEXCOORD0;

out TYPE varying0;
out TYPE varying1;

void main()
{
	varying0 = TEXCOORD0.SUFFIX;
	varying1 = TEXCOORD0.SUFFIX + 0.1;
	gl_Position = POSITION;
}