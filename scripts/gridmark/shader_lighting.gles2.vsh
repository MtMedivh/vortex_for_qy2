attribute mediump vec4 POSITION;

// @cb0
uniform mediump vec3 vLightPos0;
uniform mediump vec3 vLightPos1;
uniform mediump vec3 vLightDir2;
uniform mediump vec3 vLightDir3;
uniform mediump vec3 vCameraPos;


varying lowp vec3 vColour;

vec3 LightDirectional( vec3 vColour, vec3 vDir, vec3 vNormal )
{
	float fIntensity;

	fIntensity = dot( normalize( vDir ), vNormal );
	fIntensity = max( fIntensity, 0.0 );
	return vColour * fIntensity;
}

vec3 LightPoint( vec3 vColour, vec3 vLight, vec3 vVtx, vec3 vNormal, vec3 vCamera, float fSpecularPower )
{
	vec3 vLightDir, vLightDirRef, vCamDir;
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

void main( void )
{
	vec3 vLightDir;

	vColour = vec3( 0.0, 0.0, 0.0 );
	vColour += LightPoint( vec3( 0.9, 0.1, 0.1 ), vLightPos0, POSITION.xyz, vec3( 0, 0, 0.78 ), vCameraPos, 2.1 );
	vColour += LightPoint( vec3( 0.1, 0.9, 0.1 ), vLightPos1, POSITION.xyz, vec3( 0, 0, 0.78 ), vCameraPos, 5.1 );
	vColour += LightDirectional( vec3( 0.1, 0.1, 0.9 ), vLightDir2, vec3( 0, 0, 0.78 ) );
	vColour += LightDirectional( vec3( 0.7, 0.7, 0.1 ), vLightDir3, vec3( 0, 0, 0.78 ) );

	gl_Position = POSITION;
}