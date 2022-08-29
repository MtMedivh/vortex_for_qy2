#version 330

uniform lowp sampler2D uSampler0; // %binding=0
uniform lowp sampler2D uSampler1; // %binding=1

in mediump vec2 coord_tex0;
in mediump vec2 coord_tex1;

out highp vec4 FragColor;

void main()
{
	FragColor = texture( uSampler0, coord_tex0 ) + texture( uSampler1, coord_tex1 );
}
