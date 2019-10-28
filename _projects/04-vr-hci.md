---
title: (WIP) Look Ma, virtual hands!
permalink: /projects/vr-hci/
---

Controller-less tracking leads to freedom of performing intuitive gestures to interact with computers. Leap Motion does just that: it is special IR based tracking solution. Combine that with an Oculus Rift and you are suddenly zipping through virtual space with shiny virtual hand avatars! I'm working on implementation of some novel virtual object selection techniques and would be researching on their efficacy in comparison to more classic techniques like Raycasting. This is part of research work as part of my six month internship at Embedded Interaction Lab, IIT Guwahati under the guidance of Dr. Keyur Sorathia. Conducting experiments using Unity? Check out [this awesome Unity package][UXF] called Unity Experiments Framework by the folks at Immersive Cognition Group, University of Leeds!

Video demonstrating the test environment, participant tries out the "pinch" selection method.
{% include video id="3vGBSx921Xs" provider="youtube" %}

The Unity Experiments Framework provides an easy way to set participant details.
![Unity Experiments Framework](/assets/images/vr-hci-uxf.jpg)

Participant tries out "Raycasting" in the test environment.
![Raycasting in the test environment](/assets/images/vr-hci-raycasting.jpg)

While this hardware setup does not seem to have a big developer base (despite being in the market for many years), the Leap Motion SDK and the assets provided for Unity provide a lot of flexibility. The lack of appropriate examples with their documentation does give a developer a hard time initially.

[UXF]: https://github.com/immersivecognition/unity-experiment-framework
