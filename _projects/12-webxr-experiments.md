---
title: Experiments with WebXR
permalink: /projects/webxr-experiments/
---

I challenged myself to create VR experiences for WebXR using aframe. 

And what better way to learn than trying to make a clone of your favourite VR app? I love Cubism VR for its minimalist, zen vibes and wanted to create a similar experience using aframe and Javascript. This is what I created over the span of a week.

{% include video id="pErf2HzZjDM" provider="youtube" %}

[Play the demo hosted on GitHub][demo]. The full code can be found in [this repository][repo].

Another trial with WebXR (with AR this time) was to use phones as a 3D controller to reach out into the page and move cubes. I modified the WebXR AR hit test demo to get the position of the phone and then streamed the data to a companion website using a WebRTC library called RTCMultiConnection. On the receiver, I read the pose values of the phone and used that to simulate a block moving around in aframe.

{% include video id="LdxBvx1AlS4" provider="youtube" %}

Technologies used: Oculus/Meta Quest 2, aframe, WebXR, WebRTC, Javascript

[demo]: https://devpika.github.io/acubism/
[repo]: https://github.com/DevPika/acubism