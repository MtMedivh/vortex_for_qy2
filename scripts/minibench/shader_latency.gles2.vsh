attribute highp vec4 POSITION;

varying mediump vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = vec2(0.0);
}
