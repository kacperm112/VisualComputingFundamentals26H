---
# This is a YAML preamble, defining pandoc meta-variables.
# Reference: https://pandoc.org/MANUAL.html#variables
# Change them as you see fit.
title: TDT4195 Exercise 2
author:
- Kacper Krzysztof Maciejko
- Clément Jourdin
date: \today # This is a latex command, ignored for HTML output
lang: en-US
papersize: a4
geometry: margin=4cm
toc: false
toc-title: "Table of Contents"
toc-depth: 2
numbersections: true
header-includes:
# The `atkinson` font, requires 'texlive-fontsextra' on arch or the 'atkinson' CTAN package
# Uncomment this line to enable:
#- '`\usepackage[sfdefault]{atkinson}`{=latex}'
colorlinks: true
links-as-notes: true
# The document is following this break is written using "Markdown" syntax
---

<!--
This is a HTML-style comment, not visible in the final PDF.
-->

# Task 1: Per-Vertex Colors

## (a) 
Most of this task we have already accidentaly accomplished in Assignment 1. What needed to be changed was adding the alpha value, instead of setting it to 1.0 in the fragment shader as done previously.

#### Modifying create_vao
Function creating VAO needed to be modified to accept each vertice containing 7 floating point values (3 describing positon, 4 describing colour). To do that gl::VertexAttribPointer needed to be modified to be of size of 28 bytes instead of the previous 12. Additionally, it needed to be called twice, once for the position values, and once with colour values, with the last passed value being an offset of 3 bytes (as described in Assignment 1)

#### Modifying shaders
Vertex shaders needed to be modified to pass a vector containing color to the fragment shader. Fragment shader needed to be modified to take that as input instead of colour being set once and for all in its code.

![
    Triangles with vertices of different colours
](images/ass2task1opacity.png)



## Task 2: Alpha Blending and Depth

## (a)
```rust
let vertices_vec_4: Vec<f32> = vec![
    -0.6, -0.6, 0.0, 1.0, 1.0, 1.0,
    0.6, -0.6, 0.0, 1.0, 1.0, 1.0,
    0.0,  0.6, 0.0, 1.0, 1.0, 1.0,

    -0.6, 0.6, 0.0, 1.0, 1.0, 1.0,
    0.6, 0.6, 0.0, 1.0, 1.0, 1.0,
    0.0, 0.9, 0.0, 1.0, 1.0, 1.0,

    -0.8, -0.8, 0.0, 1.0, 0.0, 0.0,
    -0.4, -0.8, 0.0, 1.0, 0.0, 0.0,
    -0.6, -0.65, 0.0, 1.0, 0.0, 0.0,

    -0.5, 0.4, 0.0, 1.0, 1.0, 1.0,
    0.5, 0.4, 0.0, 1.0, 1.0, 1.0,
];

// adding more triangles, we also have to add more indices (3 for each)
let indices_vec_4: Vec<u32> = vec![
    0, 1, 2,
    3, 4, 5,
    6, 7, 8,
    0, 9, 3,
    1, 10, 2,
    ];
```

![Three transparent triangles overlapping](images/Assignment2Task2OverlappingTriangles.png)

The closest triangles have been rendered more transparent than the furthest ones to display that the triangles are on top of each other.


# Task 3: The Affine Transformation Matrix

### (a)
Completing this task required modifying the Vertex Shader in a manner shown below:
```rust
#version 430 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec4 color;

out VS_OUTPUT {
    vec4 color;
} OUT;

void main()
{

    mat4x4 matrix = {{1.0, 0.0, 0.0, 0.0}, {0.0, 1.0, 0.0, 0.0}, {0.0, 0.0, 1.0, 0.0}, {0.0, 0.0, 0.0, 1.0}};
    gl_Position = matrix * vec4(position, 1.0f);
    OUT.color = color;
}

```
The vertices multiplied by the 4x4 identity matrix result in no changes being made to the original result:
![
    Result of multiplication by identity matrix
](images/ass2task3a.png)