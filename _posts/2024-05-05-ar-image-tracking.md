---
layout: post
title: "Image Tracking and Camera Pose Estimation using OpenCV "
tags: ["Computer Vision", "AR"]
image: "/assets/images/blog/ar-tracking-thumb.jpg"
timeline-type: ['Pinned', 'Posts']
---

A deep-dive into the inner workings of AR
<!--more-->

<video width="400" height="400" controls autoplay muted>
  <source src="/assets/images/blog/ar-tracking.mp4" type="video/mp4">
Your browser does not support the video tag.
</video>

While we all wait for Apple to unblock WebXR on iOS Safari, developers can either use custom SLAM solutions like [the 8th Wall SDK](https://www.8thwall.com/blog/post/41173258896/how-we-engineered-ar-for-the-mobile-browser-with-8th-wall-web) and [Zappar](https://www.zappar.com/), or leverage "App Clip Players" like [Onirix](https://www.onirix.com/) or [Variant3D](https://launch.variant3d.com/) for cross-platform WebAR. Open-source solutions like [AR.js](https://github.com/AR-js-org/AR.js) and [MindAR](https://github.com/hiukim/mind-ar-js) work, but are still a far cry from the stable tracking ARCore or ARKit provide.

In some ways, comparing native on-device tracking vs. tracking that works completely in-browser is not fair. Native SLAM alogrithms can leverage IMU and depth maps from secondary camera / LiDAR to perform Visual-Inertial / LiDAR-Visual SLAM (VISLAM / LVSLAM) and get significantly better results. Camera calibration parameters can be computed in advance and stored per vendor-model combination. WASM on browsers is bridging the computation performance gap, but GPU-accelerated Computer Vision (either through WebGL or WebGPU) is still not there yet.

I implemented an image tracking pipeline using Python and OpenCV to get a deeper understanding of this topic. I first compute Akaze feature descriptors of the target, and then search for matches in frames from webcam live feed. If a match is found, I compute the homography matrix. Finally, to get the calibration parameters for camera pose estimation, I store the pixel to 3D correspondences every few matches (to get varied angles and achieve a good calibration), and then use the Solve PNP algorithm. Once calibrated, we can easily place an object at location in the image, as can be seen in the demo video. Future improvements include tracking the image using optical flow algorithms like Lucas-Kanade instead of matching features every frame. Other feature descriptors like ORB and BRISK can also be explored. You can find the code in the [Github repo](https://github.com/DevPika/py-image-tracking).