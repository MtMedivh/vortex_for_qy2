struct PS_INPUT
{
};

struct PS_OUTPUT
{
	float4 vColour: SV_TARGET;
};

SamplerState uSampler;
Texture2D uTexture;

cbuffer cb0 : register( b0 )
{
	float4 numRestarts;
	float4 increment;
};


PS_OUTPUT main( PS_INPUT input )
{
	PS_OUTPUT output;
	float4 color = float4(0.0, 0.0, 0.0, 0.0);
  
	for(float r = 0.0; r < numRestarts.x; r += 1.0)
	{
		float2 data;
		for(data.y = 0.0; data.y < increment.w; data.y += increment.y)
		{
			for(data.x = 0.0; data.x < increment.z;)
			{
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
				data = float2(data.x+increment.x, data.y+uTexture.Sample( uSampler, data.xy));
			}
		}
		color += data.xyxy;
	}
	output.vColour = color;
	return output;
}
