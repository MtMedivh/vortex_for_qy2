#version 330

uniform sampler2D uSampler; // %binding=0
in vec2 vTexCoord;

const vec2 factor = vec2(0.00390625); // 1.0/256.0


layout(std140) uniform cb0 { // %binding=0
	vec4 numContinues;
	vec4 numRestarts;
};

out vec4 FragColor;

void main()
{
	vec4 color = vec4(0.0);
	vec4 baseData = texture( uSampler, vTexCoord );
  
	for(float x = 0.0; x < numRestarts.x; x += 1.0)
	{
		vec4 data = baseData;
		for(float i = 0.0; i < numContinues.x; i += 1.0)
		{
			data.xz += 0.01;
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );
			data = texture( uSampler, data.yw*factor+data.xz );      
		}
		color += data;
	}
	FragColor = color;             
}
