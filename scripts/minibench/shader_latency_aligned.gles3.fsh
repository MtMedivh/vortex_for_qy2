#version 300 es

uniform lowp sampler2D uSampler; // %binding=0
in highp vec2 vTexCoord;

layout(std140) uniform cb0 { // %binding=0
	highp vec4 numRestarts;
	highp vec4 increment;
};

out highp vec4 FragColor;

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
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
				data = vec2(data.x+increment.x, data.y+texture( uSampler, data.xy));
			}
		}
		color += data.xyxy;
	}
	FragColor = color;             
}
