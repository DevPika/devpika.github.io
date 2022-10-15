---
layout: post
title: "WebXR passthrough finally arrives"
tags: ["WebXR", "AR","threejs"]
image: "/assets/images/blog/passthrough.gif"
---

About time we got access to passthrough mode in the browser using WebXR on Quest 2!
<!--more-->

![WebXR passthrough](/assets/images/blog/passthrough.gif)

Meta released this after their recent Meta Connect 2022, during which they showcased a WebXR experience running in full color passthrough on the new Meta Quest Pro. I tinkered with the three.js paint sample to enable passthrough. The main changes are:
* Change session to immersive-ar
* Make sky transparent
* Change tracking space to local-floor space

This is my first time using threejs to make a WebXR app, other times I either used PlayCanvas or BabylonJS. I also used a different environment to host the example this time around - CodeSandbox. [Full code here](https://codesandbox.io/s/three-js-webxr-passthrough-2fp0ny)
