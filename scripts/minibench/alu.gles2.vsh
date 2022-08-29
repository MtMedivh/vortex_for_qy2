attribute highp vec4 POSITION;
attribute highp vec4 TEXCOORD0;

varying PRECISION TYPE varying0;
varying PRECISION TYPE varying1;

void main()
{
	varying0 = TEXCOORD0.SUFFIX;
	varying1 = TEXCOORD0.SUFFIX+0.1;
	gl_Position = POSITION;
}
