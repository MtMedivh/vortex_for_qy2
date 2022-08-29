attribute highp vec4 POSITION;
attribute highp vec2 TEXCOORD0;

varying mediump vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = TEXCOORD0;
}
