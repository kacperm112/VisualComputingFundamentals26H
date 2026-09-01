#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 color;

out VS_OUTPUT {
    vec3 color;
} OUT;

void main()
{
    mat3x3 matrix = {{-1.0, 0.0, 0.0}, {0.0, -1.0, 0.0}, {0.0, 0.0, 1.0}};
    vec3 newPosition = matrix*position;
    gl_Position = vec4(newPosition, 1.0f);
    OUT.color = color;
}