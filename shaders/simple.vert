#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normals;

uniform mat4x4 camera_transformation_matrix;

// out VS_OUTPUT {
//    vec4 color;
// } OUT;

out VS_OUTPUT {
   vec3 normals;
} OUT;

void main()
{
    vec4 temPos = vec4(position, 1.0f);
    vec4 newPosition = camera_transformation_matrix*temPos;
    gl_Position = newPosition;
    // OUT.color = color;
    OUT.normals = normals;
}