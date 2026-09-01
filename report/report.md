---
# This is a YAML preamble, defining pandoc meta-variables.
# Reference: https://pandoc.org/MANUAL.html#variables
# Change them as you see fit.
title: TDT4195 Exercise 1
author:
- Kacper Krzysztof Maciejko
- Clement Jourdin
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

# Drawing your first triangle

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



### Subsubheading

This is a paragraph.
This is the same paragraph.

This is a new paragraph, with *italic*, **bold**, and `inline code` formatting.
It is possible to use special classes to format text: [this is a test]{.smallcaps}.



[This](https://www.ntnu.no) is a link.
[This][] is also a link. <!-- defined below -->
This[^this_is_a_unique_footnote_label] is a footnote. <!-- defined below -->
This^[Footnotes can also be written inline] is also a footnote.


[This]: https://www.uio.no
[^this_is_a_unique_footnote_label]: In footnotes you can write anything tangentially related.

* This
* is
* a
* unordered
* list

1. This
1. is
1. a
1. ordered
1. list
    a. with
    a. sub
    a. list

       with multiple paragraphs

This is still on the first page

`\clearpage`{=latex}

<!--
Above is a raw LaTeX statement.
Those are included when exporting to LaTeX or PDF, and ignored when exporting to HTML.
-->

This is on the second page

i) Roman ordered list
i) Roman ordered list
i) Roman ordered list

This
: is a definition

> this is a
block quote


This is a paragraph with _inline_ \LaTeX\ style math: $\frac{1}{2}$.
Below is a math _block_:

$$
    \int_{a}^{b} f(x)dx
$$


| This | is  | a   | table |
| ---- | --- | --- | ----- |
| 1    | 2   | 3   | 4     |
| 5    | 6   | 7   | 8     |

: This is a table caption

This is an inline image with a fixed height:
![](images/logo.png){height=5em}

Below is a _figure_ (i.e. an image with a caption).
It floats and may as a result move to a different page depending on the layout.

![
    Image with caption
](images/logo.png)

Enable and use the `pandoc-crossref` filter to reference figures, tables and equations.

# Geometry and Theory
## Explain the following in your own words:
1. Why does the depth buffer need to be reset each frame? Describe what you would observe in a scene with a sphere moving rightward, while not clearing the depth buffer:
The depth buffer holds the depth of each pixel in the scene. Each fragment is compared against the depth buffer's value at that point. If a scene changes, but the depth buffer is not cleared, the pixels in a new scene will be compared against the depth values of the previous frame. That means that a sphere moving rightward would leave a trail of hidden background pixels in its wake, because their depth would still be registering as being hidden behind an object - even if said object has since moved.

2. In which situation can the Fragment Shader be executed multiple times for the same pixel?

3. What are the two most commonly used types of shaders? What are the responsibilites of each of them?
* Vertex Shader - shader responsible for transforming individual vertices around a scene, as well as projecting the scene onto the camera.
* Fragment Shader - shader responsible for determining the colour of each fragment

4. Why is it common to use an index buffer to specify which vertices should be connected into triangles, as opposed to relying on the order in which the vertices are specified in the vertex buffer(s)?


5. While the last output of gl::VertexAttribPointer() is a pointer, we usually pass it in a null pointer. Describe a situation in which you would pass a non-zero value into this function.


# Optional Bonus Challenges
