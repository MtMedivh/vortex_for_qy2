
struct VS_INPUT
{
	float4 vPosition : POSITION;
};


cbuffer cb0 : register( b0 )
{
	float3 vLightPos0;
	float3 vLightPos1;
	float3 vLightDir0;
	float3 vLightDir1;
	float3 vCameraPos;
};


struct VS_OUTPUT
{
	float3 vColour : COLOR0;

	float4 vPosition : SV_POSITION;
};



float3 LightDirectional( float3 vColour, float3 vDir, float3 vNormal )
{
	return vColour * max( dot( normalize( vDir ), vNormal ), 0.0 );
}

float3 LightPoint( float3 vColour, float3 vLight, float3 vVtx, float3 vNormal, float3  vCamera, float fSpecularPower )
{
	float3  vLightDir, vLightDirRef, vCamDir;
	float fIntensity, fSpecular;
	float fDistance;

	// Diffuse
	vLightDir = vLight - vVtx;
	fDistance = length( vLightDir );
	vLightDir = normalize( vLightDir );

	fIntensity = dot( vLightDir, vNormal ) / exp( fDistance );
	fIntensity = max( fIntensity, 0.0 );

	// Specular
	vLightDirRef = 2.0 * vNormal * dot( vLightDir, vNormal ) - vLightDir;
	vLightDirRef = normalize( vLightDirRef );
	vCamDir = vCamera - vVtx;
	vCamDir = normalize( vCamDir );

	fSpecular = dot( vLightDirRef, vCamDir );
	fSpecular = max( fSpecular, 0.0 );
	fSpecular = pow( fSpecular, fSpecularPower );

	fIntensity += fSpecular;

	return vColour * fIntensity;
}


VS_OUTPUT main( VS_INPUT input )
{
	VS_OUTPUT output;

	float3 colour = float3( 0.0, 0.0, 0.0 );
	colour += LightPoint( float3( 0.9, 0.1, 0.1 ), vLightPos0, input.vPosition.xyz, float3( 0, 0, 0.78 ), vCameraPos, 2.1 );
	colour += LightPoint( float3( 0.1, 0.9, 0.1 ), vLightPos1, input.vPosition.xyz, float3( 0, 0, 0.78 ), vCameraPos, 5.1 );
	colour += LightDirectional( float3( 0.1, 0.1, 0.9 ), vLightDir0, float3( 0, 0, 0.78 ) );
	colour += LightDirectional( float3( 0.7, 0.7, 0.1 ), vLightDir1, float3( 0, 0, 0.78 ) );

	output.vColour = colour;
	output.vPosition = input.vPosition;

	return output;
}
