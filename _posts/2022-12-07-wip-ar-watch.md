---
layout: post
title: "[WIP]#2 Passthrough AR - adding a watch!"
tags: ["AR", "threejs", "WebXR", "Watch"]
image: "/assets/images/blog/ar-watch.gif"
timeline-type: ['Posts']
---

Bringing a customizable watch to AR!
<!--more-->

I have always been a big fan of the different 3D UI explorations by UltraLeap (previously Leap Motion). One of them involving [Project Northstar, the open HW/SW passthrough AR headset](https://blog.leapmotion.com/northstar/) from Leap Motion is very special to me.

<video controls><source src="/assets/images/blog/wearable.mp4" type="video/mp4"></video>

I want to create something similar, but only this time it will all be in WebXR! I am also experimenting with adding a watch that can stand in for almost any rectangular smart watch, as I am scaling a square model based on the required aspect ratio. To make this even more dynamic, I also have an attachment point in the watch's model where I can insert any watch face!

![Watch in AR three js app](/assets/images/blog/ar-watch.gif)

Maybe in the future I will be able to make the watch face completely dynamic instead of a static image - this and many other wonderful ideas can come to life when WebXR DOM Layers spec is ready! For now I will settle with [creating watch faces for my very real Amazfit band 7](https://github.com/DevPika/band7-photoface).