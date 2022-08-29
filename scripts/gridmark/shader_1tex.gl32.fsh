#version 330

uniform lowp sampler2D uSampler; //@0

in mediump vec2 vTexCoord;

out highp vec4 FragColor;

void main()
{
	FragColor = texture( uSampler, vTexCoord );
}
