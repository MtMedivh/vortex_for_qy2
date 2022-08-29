#version 300 es

uniform lowp sampler2D uSampler; // %binding=0

in mediump vec2 vTexCoord;

out highp vec4 FragColor;

void main()
{
	FragColor = texture( uSampler, vTexCoord );
}
