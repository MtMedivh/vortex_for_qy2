attribute highp vec4 POSITION;

varying mediump vec2 vTexCoord;

void main()
{
	gl_Position = POSITION;
	vTexCoord = (POSITION.xy+1.0)/2.0;
}
