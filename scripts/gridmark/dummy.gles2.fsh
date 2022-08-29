uniform lowp sampler2D uSampler; //@0

varying mediump vec2 vTexCoord;

void main()
{
	gl_FragColor = vec4( texture2D( uSampler, vTexCoord ).rgb, 1.0 );
}
