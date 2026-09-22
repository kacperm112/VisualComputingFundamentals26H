#version 430 core

in VS_OUTPUT {
    vec3 color;
} IN;

out vec4 color;

void main()
{
    vec3 colorRGB = vec3(1.0, 1.0, 1.0);

    vec3 lightDirection = normalize(vec3(0.8, -0.5, 0.6));

    float diffuse = max(0.0, dot(IN.color, -lightDirection));

    vec3 finalColor = colorRGB * diffuse;

    color = vec4(finalColor, 1.0);
}