#version 330

uniform sampler2D uSampler; // %binding=0
in vec2 vTexCoord;

layout(std140) uniform cb0 { // %binding=0
	vec4 numRestarts;
	vec4 increment;
};

out vec4 FragColor;

void main()
{
	vec4 color = vec4(0.0);
  
	for(float r = 0.0; r < numRestarts.x; r += 1.0)
	{
		vec2 data;
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
