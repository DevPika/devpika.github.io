---
layout: post
title: "AOD Tweaks as a notification LED replacement"
tags: ["Android"]
timeline-type: ['Posts']
---

A creative AOD hack that only turns on with notifications
<!--more-->

Most smartphones today do not ship with a separate notification LED. My Google Pixel 6a only provides a minimal set of options to customize the AOD. While userspace apps that allow AOD customizations exist, I found their impact on the phone's battery to be much higher than the vendor-optimized AOD built into the OS. I explored some [open-source options](https://github.com/Domi04151309/AlwaysOn) in the hopes of adding more features and optimizing battery through [Shizuku](https://github.com/KieronQuinn/Smartspacer) (to enable power-saving modes), however the basic idea of these custom AOD apps drawing constantly to the screen wasn't very appealing. I found a [great deep-dive](https://medium.com/@KieronQuinn/smartspacer-at-a-glance-but-actually-useful-38ccff1e3255) into customizable ["At A Glance" screen for Pixel phones](https://github.com/KieronQuinn/Smartspacer), but it wasn't what I was looking for. Plus, as the author mentions, this hacky approach used APIs that could break in future OS releases.

As I was brainstorming some Notification Listener related solutions, I found [Aodify](https://f-droid.org/en/packages/me.lucky.aodify/) which put a different spin on the same problem - why not toggle the whole AOD setting altogether? I immediately forked the [project on Github](https://github.com/x13a/Aodify) and added a few optional switches to get the features I wanted, like ignoring DND modes and resetting notification state when screen was turned on and off. You can find my fork [here](https://github.com/DevPika/Aodify-Next). Other battery-saving features could be to turn off the AOD when inside the pocket, or only switch it on at regular intervals after receiving a notification.
