uniform lowp sampler2D uSampler; //@0
varying mediump vec2 vTexCoord;

const mediump vec2 factor = vec2(0.00390625); // 1.0/256.0

// @cb0
uniform highp float numContinues;
uniform highp float numRestarts;

void main()
{
  mediump vec4 color = vec4(0.0);
  mediump vec4 baseData = texture2D( uSampler, vTexCoord );
  
  for(highp float x = 0.0; x < numRestarts; x += 1.0)
  {
    mediump vec4 data = baseData;
    for(highp float i = 0.0; i < numContinues; i += 1.0)
    {
      data.xz += 0.01;
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );
      data = texture2D( uSampler, data.yw*factor+data.xz );      
    }
    color += data;
  }
  gl_FragColor = color;             
}
