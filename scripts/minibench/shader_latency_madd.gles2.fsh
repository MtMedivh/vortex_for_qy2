precision highp float;
varying highp float varying1;

void main(void)															 
{																							 
  float t1 = varying1;
  
  for(int j = 0; j < 10; j++)
  {
	  for(int i = 0; i < INNER_LOOP; i++)
	  {
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;

	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  t1 = t1*t1+t1;
	  }
  }
  
  gl_FragColor = vec4(t1);
}