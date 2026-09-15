#version 430 core

layout (location = 0) in vec4 position;
layout (location = 1) in vec4 color;

uniform mat4x4 transformationMatrix;

out VS_OUTPUT {
    vec4 color;
} OUT;

void main()
{
    vec4 newPosition = transformationMatrix*position;
    gl_Position = newPosition;
    OUT.color = color;
}