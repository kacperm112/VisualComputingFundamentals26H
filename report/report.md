---
# This is a YAML preamble, defining pandoc meta-variables.
# Reference: https://pandoc.org/MANUAL.html#variables
# Change them as you see fit.
title: TDT4195 Exercise 1
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

# Tasl 1: Drawing your first triangle

## (c) 
Define and instantiate a VAO containing at least 5 distinct triangles using the function you defined in (a). Use the shader pair you loaded in (b) to
draw the VAO elements.

```rust
    let vertices_vec_4: Vec<f32> =
        vec![
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

![
    5 distinct triangles
](images/task1triangles.png)



## Task 2: Geometry and Theory

### a)
![A triangle experiencing clipping](images/task2clippedTriangle.png)

The triangle is truncated on 2 sides because 2 of its vertices have a coordinate which is outside of the coordinate system we are working on (vertices 0 and 2 have respectively -1.2 and 1.2 as their z coordinate, and the coordinate system ranges from -1 to 1). This phenomenon is called **clipping** and it ensures that images behind the camera are not visible in the rendered image.

### b)