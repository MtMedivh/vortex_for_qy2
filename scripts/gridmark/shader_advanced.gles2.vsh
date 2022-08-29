attribute highp vec3	POSITION;
attribute highp vec2	TEXCOORD0;

varying mediump vec2 T2d;
varying mediump vec3 N0w;
varying mediump vec3 Tw;
varying mediump vec3 V0w;
varying mediump vec3 L0w[2];

void main( void )
{
	gl_Position = vec4( POSITION, 1.0 );
	vec3 P      = POSITION;
	N0w        = POSITION;
	Tw        = POSITION;
	T2d       = TEXCOORD0;
	V0w        = POSITION;
	L0w[0]     = vec3( 1.0, 1.0, 0.0 );
	L0w[1]     = vec3( 1.0, -1.0, 0.0 );
}