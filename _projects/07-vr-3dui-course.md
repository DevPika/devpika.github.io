---
title: 3D interaction techniques in Unity
permalink: /projects/vr-3dui-course/
subtitle: Fast and cheap VR prototyping using Unity and Cardboard viewers
image: /assets/images/3dui-thumb.png
---

Google Cardboard leveraged the idea of using all the in-built sensors onboard most smartphones today to bring Virtual Reality to the masses. While suffering from a fair share of problems including phone heating and limited 3DoF tracking, it can still work as a good medium for testing out simple interactions in VR.

I created a simple virtual room with some interactable objects and navigation (teleportation) as the final submission in a [Coursera online course from the University of London][course] on 3D interaction design. The well-rounded course discussed the pros and cons of common methods of accomplishing interaction tasks like selection, navigation and manipulation in 3D environments. It also gave many practical tips on implementation of the methods in Unity. The fast-changing VR tech stack had made some of the packages and tools in the course obsolete so I had to search for proper substitutes and figure out quite a lot of things on my own.

Video demonstrating the virtual room and programmed interactions
{% include youtube.html video="nX5d2yfMf7k" %}

This project allowed me to practically implement interaction techniques and test them out in a virtual environment in a minimal setup, giving me a hands-on experience with the content of the course. I chose to implement teleportation as the navigation method and for selection, both click button-based (present on the side of Cardboard-like viewers) and head gaze-based systems. I added audio to make the interactions more enjoyable.

The GVR plugin makes testing out the environment easy without needing to deploy to the Android device each time through a simulated headset mode available from the Unity editor Play mode itself. This came in quite handy during the development process. While Google has open sourced its Cardboard SDK and is no longer maintaining it, it remains a viable option for a fast and cheap introduction to developing for Virtual Reality.

Resources used:
* Unity 2019.4
* [Pack Gesta Furniture #1][asset] from Unity Asset store
* Printer and click audio freely licensed from [freesound](https://freesound.org/)


[course]: https://www.coursera.org/learn/3d-interaction-design-virtual-reality
[asset]: https://assetstore.unity.com/packages/3d/props/furniture/pack-gesta-furniture-1-28237
