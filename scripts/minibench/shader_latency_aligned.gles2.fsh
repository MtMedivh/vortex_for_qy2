uniform lowp sampler2D uSampler; //@0
varying highp vec2 vTexCoord;

// @cb0
uniform highp vec4 numRestarts;
uniform highp vec4 increment;

void main()
{
	highp vec4 color = vec4(0.0);
  
	for(highp float r = 0.0; r < numRestarts.x; r += 1.0)
	{
		highp vec2 data;
		for(data.y = 0.0; data.y < increment.w; data.y += increment.y)
		{
			for(data.x = 0.0; data.x < increment.z;)
			{
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture2D( uSampler, data.xy));
			}
		}
		color += data.xyxy;
	}
	gl_FragColor = color;             
}
