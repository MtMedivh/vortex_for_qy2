uniform lowp sampler2D uSampler0; //@0
uniform lowp sampler2D uSampler1; //@1

varying mediump vec2 coord_tex0;
varying mediump vec2 coord_tex1;

void main()
{
	gl_FragColor = texture2D( uSampler0, coord_tex0 ) + texture2D( uSampler1, coord_tex1 );
}
