---
layout: post
title: "Babylon JS Node Shader Editor #2"
tags: ["Creative Coding","Shaders"]
image: "/assets/images/blog/glow.gif"
---
Continuing exploration of the node shader tool from Babylon JS
<!--more-->

[![subtle glow shader](/assets/images/blog/glow.gif)](https://nme.babylonjs.com/#MV5771#1)
[![glow band shader](/assets/images/blog/glow2.gif)](https://nme.babylonjs.com/#UKXMUH)

New shader experiements with the BabylonJS node material editor, again playing with the idea of waves - [Subtle Glow](https://nme.babylonjs.com/#MV5771#1) and [Glowing Band](https://nme.babylonjs.com/#UKXMUH). The effects work well across different objects in the shader preview dropdown like the sphere, the plane and the cube. As usual, the colors are variables that can be fully customized. This time around I created a custom node with code inside that acts as a smooth bandpass filter:
```json
{
    "name": "Smooth Bandpass",
    "comments": "Allows a band of values to pass through, smoothly clamping the rest to zero",
    "target": "Neutral",
    "inParameters": [
        {
        "name": "inValue",
        "type": "Float"
        },
        {
        "name": "bandWidth",
        "type": "Float"
        },
        {
        "name": "center",
        "type": "Float"
        },
        {
        "name": "smoothWidth",
        "type": "Float"
        }
    ],
    "outParameters": [
        {
        "name": "output",
        "type": "Float"
        }
    ],
    "functionName": "smoothBandpass",
    "code": [
        "void smoothBandpass(float inValue, float bandWidth, float center, float smoothWidth, out float result) {",
        "    float leftEdge  = center - (bandWidth * 0.5);",
        "    float rightEdge = center + (bandWidth * 0.5);",
        "    float leftStep  = smoothstep(leftEdge - smoothWidth,  leftEdge  + smoothWidth, inValue);",
        "    float rightStep = 1.0 - smoothstep(rightEdge - smoothWidth, rightEdge + smoothWidth, inValue);",
        "    result = min(leftStep, rightStep);",
        "}"
    ]
}
```
More about custom nodes in BabylonJS on [the docs page](https://doc.babylonjs.com/toolsAndResources/tools/nme/customBlocks).