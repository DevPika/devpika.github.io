---
layout: post
title: "[WIP] Creating a 3D UI for passthrough AR"
tags: ["AR", "threejs", "WebXR"]
image: "/assets/images/blog/hand-buttons.gif"
timeline-type: ['Posts']
---

Tap tap go the buttons!
<!--more-->

![threejs passthrough ar 3dui](/assets/images/blog/hand-buttons.gif)

I have been working on a creating simple but functional 3D UI in three.js for the AR passthrough mode. The passthrough mode became available for WebXR apps only recently, following which I added it as a feature to [Mozilla's Jumpy Ball](/2022/10/16/jumpy-balls-xr/) and my music [synth tool, DAW[n]XR](/2022/07/04/daw-n-xr/). But I wanted to create a 3D UI demo that could be re-used in other projects as a base. Hand-tracking and AR passthrough work quite well together so I chose to focus on integrating these two features. As I went through the examples in the three.js repo, one of them having functional buttons and hand tracking posed itself as the perfect base for this project.

The code for this example is a bit on the complex side as it uses [ecsy](https://github.com/ecsyjs/ecsy) (which is also used by Mozilla's Jumpy Ball and the [recent WebXR demo from Meta called Project Flowerbed](https://flowerbed.metademolab.com/). My first step was to separate out the javascript portions to separate files. I also created separate module files for `systems` and `components`. Finally I started working on a hand-attachment script that would help me attach arbitrary Object3D to various joints on the arm.

This is when I encountered a (small) bug involving initialization of hand-joint objects. While I expected this to happen as soon as the hand data was available in a session, it turns out the joints were created only in the next update frame! Going around this would have meant checking the availability of this data in an update loop till it became available, but why do that when you can propose changes yourself? As three.js is an open-source library, I dug into the code and [created an MR addressing the issue](https://github.com/mrdoob/three.js/pull/24827). Till the fix is accepted and released, I will stick to a locally built version of the library that incorporates this change. I will be writing another article soon with updates. Stay tuned!