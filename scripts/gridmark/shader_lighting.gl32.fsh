#version 330

in lowp vec3 vColour;
out highp vec4 FragColor;

void main( void )
{
	FragColor = vec4( vColour, 0.0 );
}