#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec4 color;

uniform mat3x3 transformationMatrix;

out VS_OUTPUT {
    vec4 color;
} OUT;

void main()
{
    vec3 newPosition = transformationMatrix*position;
    gl_Position = vec4(newPosition, 1.0f);
    OUT.color = color;
}