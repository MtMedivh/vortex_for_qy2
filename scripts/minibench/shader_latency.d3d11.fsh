struct PS_INPUT
{
	float2 vTexCoord : TEXCOORD0;
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};

SamplerState uSampler;
Texture2D uTexture;

static const float2 factor = float2(0.00390625, 0.00390625); // 1.0/256.0


cbuffer cb0 : register( b0 )
{
	float4 numContinues;
	float4 numRestarts;
};


PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;
	
	
	float4 color = float4(0.0, 0.0, 0.0, 0.0);
	float4 baseData = uTexture.Sample( uSampler, input.vTexCoord );
  
	for(float x = 0.0; x < numRestarts.x; x += 1.0)
	{
		float4 data = baseData;
		for(float i = 0.0; i < numContinues.x; i += 1.0)
		{
			data.xz += 0.01;
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );
			data = uTexture.Sample( uSampler, data.yw*factor+data.xz );      
		}
		color += data;
	}
	output.vColour = color;   
	return output;	
}
