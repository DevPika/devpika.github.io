---
title: Look Ma, virtual hands!
permalink: /projects/vr-hci/
subtitle: HCI Experiments with Oculus Rift and Leap Motion
image: /assets/images/rift-leapmotion.jpg
tags: ["VR", "HCI"]
date: 2019-10-15T00:00:00Z
timeline-type: ['Pinned', 'Projects']
---

Controller-less tracking frees the body to perform intuitive gestures to interact with computers. Leap Motion does just that: it is a special IR based hand tracking solution. Throw in an Oculus Rift into the mix and you are suddenly zipping through virtual space with shiny virtual hand avatars! I was working on implementation of some novel virtual object selection techniques and researching their efficacy in comparison to classic techniques like Raycasting. I was also researching the different feedback possibilities for a bespoke controller to enable non-visual access to virtual environments. These projects were a part of my six month internship at [Embedded Interaction Lab](http://embeddedinteractions.com/), IIT Guwahati under the guidance of Dr. Keyur Sorathia and PhD students of the lab, Pranjal Borah and Shimmila Bhowmick. We hope to have our work published in upcoming conferences like TEI'20 and IEEE VR'20. Find out more about my research and publications [here](/research/).

Conducting experiments using Unity? Check out [this awesome Unity package][UXF] called Unity Experiments Framework by the folks at Immersive Cognition Group, University of Leeds!

Video demonstrating the test environment, participant tries out the "pinch" selection method.
{% include youtube.html video="3vGBSx921Xs" %}

The Unity Experiments Framework provides an easy way to set participant details.
![Unity Experiments Framework](/assets/images/vr-hci-uxf.jpg)

Participant tries out "Raycasting" in the test environment.
![Raycasting in the test environment](/assets/images/vr-hci-raycasting.jpg)

While this hardware setup does not seem to have a big developer base (despite being in the market for many years), the Leap Motion SDK and the assets provided for Unity provide a lot of flexibility. The lack of appropriate examples with their documentation does give a developer a hard time initially.

[UXF]: https://github.com/immersivecognition/unity-experiment-framework
