precision highp float;
varying highp vec4 varying1;
varying highp vec4 varying2;

void main(void)															 
{																							 
  vec4 t1 = varying1;
  vec4 t2 = varying2;

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	

  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;	
  t1 = t1*t1+t2;	
  t2 = t2*t2+t1;
  
  gl_FragColor = t2;
}