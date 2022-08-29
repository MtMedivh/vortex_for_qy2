#version 300 es

in highp vec4    POSITION;
in highp vec4    TEXCOORD0;	
out highp vec2    varying0;		
out highp vec2    varying1;		
									
void main(void)						
{									
	varying0 = TEXCOORD0.xy*3.0+1.0;		
	varying1 = TEXCOORD0.xy*4.0+2.0;		
	gl_Position = POSITION;		
}
