attribute highp vec4    POSITION;
attribute highp vec4    TEXCOORD0;	
varying highp vec2    varying0;	
									
void main(void)						
{									
	varying0 = TEXCOORD0.xy*3.0+1.0;
	gl_Position = POSITION;		
}
