#version 330

precision highp float;
in highp vec4 varying1;
in highp vec4 varying2;

out vec4 oColor;

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
  
  oColor = t2;
}