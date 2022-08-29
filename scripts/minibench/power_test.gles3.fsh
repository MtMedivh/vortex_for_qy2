#version 300 es

uniform lowp sampler2D uSampler0; // %binding=0
uniform lowp sampler2D uSampler1; // %binding=1

in mediump vec2 coord_tex0;
in mediump vec2 coord_tex1;

out highp vec4 FragColor;

void main()
{
  highp vec4 tex0_color = texture(uSampler0, coord_tex0);
  
  highp float x1 = sin(coord_tex0.x);
  highp vec4 color1 = vec4(coord_tex0.x, coord_tex0.y,coord_tex1.x,coord_tex1.y);
  highp vec4 color2 = color1 * color1 + color1;
  highp vec4 color3 = color2 * color2 + color1;
  
  color3.x = cos(x1+color3.x);
  highp vec4 color11 = vec4(color3.x, color3.x, color3.x,color3.x);
  highp vec4 color21 = color11 * color11 + color11;
  highp vec4 color31 = color21 * color21 + color11;
  
  color31.x = cos(color31.y+color31.x);
  highp vec4 color12 = vec4(color31.x, color31.x, color31.x,color31.x);
  highp vec4 color22 = color12 * color12 + color12;
  highp vec4 color32 = color22 * color22 + color12;
  
  color31.x = cos(color32.y+color32.x);
  FragColor.x = (color32.x + color32.y) * color32.x * color32.x;
  FragColor.y = tex0_color.x;
  FragColor.z = tex0_color.y;
  FragColor.w = color31.x + color31.y;
}
