---
layout: post
title: "【2 Oct'20】Google Cardboard in 2020"
excerpt_separator: "<!--more-->"
author: "Ayaskant Panigrahi"
---
Setting up Unity 2019.4 for Google Cardboard development isn't as straightforward as I thought. 
<!--more-->
Google [stopped making Daydream viewers](https://www.theverge.com/2019/10/15/20915609/google-pixel-4-no-daydream-support-view-vr-headset-discontinued) and [open-sourced its Cardboard VR SDK](https://developers.googleblog.com/2019/11/open-sourcing-google-cardboard.html) a year back. Since then, the process for setting up Unity to work with Google Cardboard SDK has seen many changes. Today, I tried setting up Unity 2019.4.11f1 (the latest LTS release at the time of writing this article) for development with the latest [Google Cardboard Unity XR plugin](https://developers.google.com/cardboard/develop).

The steps in the [Quickstart](https://developers.google.com/cardboard/develop/unity/quickstart) were on point and everything worked as expected. The biggest caveat was that even though I was targeting Android builds only, I still had to install the Unity addon for iOS development, without which the Cardboard plugin threw a compilation error. To be fair, the Quickstart does say that the current plugin requires both. But it is still an unexpected requirement, considering I can't build for iOS devices on a Windows PC. Additionally, the build crashed on my Redmi Note 7 Pro when I set both ARMv7 and ARM64 as target architectures, but the app started working as expected on selecting only ARMv7. On top of all this, Unity Remote doesn't seem to be working as it did before with the GVR (Google VR) packages. I'll try to get Unity Remote [working with the previous version of the GVR plugin](https://www.youtube.com/watch?v=G5qAwWA2QlE) as I think instantly trying out changes speeds up the development process (vs. making a complete build each time). Looks like the future of smartphone-based VR is bleaker than ever.

Anyways, now that I have setup the development environment, I can get my hands dirty with VR development again! It will definitely be a step back from the time I had [worked with Oculus Rift and Unity at EILab in Guwahati](https://devpika.github.io/projects/vr-hci/), but it's better than nothing. This will also be a big help for the online courses related to VR and 3D Interaction that I am currently taking on Coursera. It's time to get started with fun prototypes!
