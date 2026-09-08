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



# Task 2: Alpha Blending and Depth

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

## (a)