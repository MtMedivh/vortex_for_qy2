#version 300 es

uniform lowp sampler2D uSampler; //@0

in mediump vec2 vTexCoord;

out highp vec4 FragColor;

void main()
{
	FragColor = vec4( texture( uSampler, vTexCoord ).rgb, 1.0 );
}
