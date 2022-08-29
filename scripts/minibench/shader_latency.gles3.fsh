#version 300 es

uniform lowp sampler2D uSampler; // %binding=0
in mediump vec2 vTexCoord;

const highp vec2 factor = vec2(0.00390625); // 1.0/256.0


layout(std140) uniform cb0 { // %binding=0
	highp vec4 numContinues;
	highp vec4 numRestarts;
};

out highp vec4 FragColor;

void main()
{
	highp vec4 color = vec4(0.0);
	highp vec4 baseData = texture( uSampler, vTexCoord );
  
	for(highp float x = 0.0; x < numRestarts.x; x += 1.0)
	{
		highp vec4 data = baseData;
		for(highp float i = 0.0; i < numContinues.x; i += 1.0)
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
