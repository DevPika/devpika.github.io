---
layout: post
title: "[VR Challenge #1] PlayVoxel - a voxel drawing tool"
image: /assets/images/playvoxel-thumb.jpg
tags: ["WebXR", "VR", "Game Development", "VR Challenge"]
---
PlayVoxel is a voxel placing tool where you can be as creative as you would like!
<!--more-->

{% include youtube.html video="JoAd4Xl5FKQ" %}

Made using [PlayCanvas][playcanvas] and WebXR to be experienced on Oculus/Meta Quest 2. PlayVoxel is a voxel placing tool where you can be as creative as you would like! Features include the ability to change color of voxels placed using a custom UI, teleport around in the environment and undo placing of blocks. This was the runner-up entry into the [VR Challenge #1 hosted by Steampunk Digital][challenge]! Through this project, I sought to explore PlayCanvas as a platform for creating WebXR experiences. I also wanted to help people get started with VR in PlayCanvas by having a basic set of VR interactions like teleportation and snap turning to be used as a template. I cleaned up the code and [published a guide on the PlayCanvas forums][forum] after the challenge. I also rewrote all the scripts using TypeScript to get a understanding of how using it could benefit my web development productivity.

[Play the game on your Quest 2!][game]. The itch.io page also contains the entire source code exported from the PlayCanvas project.

Controls:

1. Press and release right trigger to place blocks

2. Hold right grip to change color, while pointed towards Color Picker (on left hand, big panel changes Hue and Saturation, slider changes Brightness)

3. Right thumbstick forward to teleport to pointed location

4. Right thumbstick sideways for snap turn in place

5. B button for Undo last block

6. Y button for Clear all blocks

[See the entire project on PlayCanvas][project] (opening in the online Editor requires a free account on PlayCanvas).

Technologies used: Oculus/Meta Quest 2, PlayCanvas, Javascript, TypeScript

[playcanvas]: https://playcanvas.com/
[challenge]: https://itch.io/jam/spd-vr-challenge-1
[game]: https://gameshire98.itch.io/playvoxel
[forum]: https://forum.playcanvas.com/t/vr-xr-guide-teleportation-snap-turn-and-input-manager/24762
[project]: https://playcanvas.com/project/888532/overview/jamsubmission