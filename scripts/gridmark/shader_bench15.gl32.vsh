#version 330

in highp vec4    POSITION;
in highp vec4    TEXCOORD0;	
out highp vec4    varying1;		
out highp vec4    varying2;		
									
void main(void)						
{									
	varying1 = TEXCOORD0*3.0+1.0;		
	varying2 = TEXCOORD0*4.0+2.0;		
	gl_Position = POSITION;		
}
