#version 430 core

// in VS_OUTPUT {
//    vec4 color;
// } IN;

in VS_OUTPUT {
   vec3 color;
} IN;


out vec4 color;

void main()
{
 //   color = IN.color;
    color = vec4(1.0f, 1.0f, 1.0f, 1.0f);
    color =  IN.color;
}