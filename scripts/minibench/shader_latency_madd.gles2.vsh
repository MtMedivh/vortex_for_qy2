attribute highp vec4 POSITION;
attribute highp vec2 TEXCOORD0;

varying highp float varying1;

void main()
{
	gl_Position = POSITION;
	varying1 = TEXCOORD0.x;
}
