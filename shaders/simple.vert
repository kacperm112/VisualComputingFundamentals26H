#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec4 color;
uniform float u_time;

out VS_OUTPUT {
    vec4 color;
} OUT;

void main()
{
    mat4x4 matrix = {{0.0, 1.0, 0.0, 0.0}, {-1.0, 0.0, 0.0, 0.0}, {0.0, 0.0, 1.0, 0.0}, {0.0, 0.0, 0.0, 1.0}};
    gl_Position = matrix * vec4(position, 1.0f);
    OUT.color = color;
}