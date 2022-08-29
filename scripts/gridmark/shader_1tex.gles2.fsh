uniform lowp sampler2D uSampler; //@0

varying mediump vec2 vTexCoord;

void main()
{
	gl_FragColor = texture2D( uSampler, vTexCoord );
}
