---
layout: post
title: "Bringing Mozilla's game Jumpy Balls to AR!"
tags: ["WebXR", "AR","threejs","Game Development"]
image: "/assets/images/blog/jumpy-balls-xr.gif"
---

Time to shoot balls around in your room!
<!--more-->

![webxr passthrough quest 2 game gif](/assets/images/blog/jumpy-balls-xr.gif)

[Link to the game hosted on Github](https://devpika.github.io/jumpy-balls-xr/)

Inspired by the latest [Meta Connect 2022 Talks on WebXR](https://www.metaconnect.com/en-us/program/fbc029/), I searched for WebXR games using Entity-Component-System (ECS) patterns. And there it was, Jumpy Balls, a fun WebXR physics platformer game from [Mozilla Mixed Reality Team](https://blog.mozvr.com/jumpy-balls/). While I remembered seeing it a couple of times in the Oculus Browser showcase, now I became genuinely interested in it! A fun game with all code and assets out in the open? I am sold!

Setting up the development environment was a bit of a pain as the dependencies in the latest commits did not play well together. My initial thoughts were to make the relevant upgrades to support the newer packages but that seemed to take forever. I even explored moving from `webpack` to `vite` in hopes of simplifying the bundling steps. Just as I was getting edgy, I found out the root cause of the confusion: the older commits were using a deprecated version of ecsy-three which had a weird version number. I used the frozen version numbers from `package-lock.json` as I ran `npm ci --legacy-peer-deps` and the repo built fine! This was a great learning experience for me in terms of solving dependency issues, a simple guide with the original repo would have saved me quite some headache though... Anyway, now you can place platforms around inside your room as you try to get the ball to cross the target hoops!

The next step was to incorporate the WebXR passthrough changes that I fiddling with over the last two days. This was surpisingly easy once I got the dev environment set up, possible made easier by the ECS structure of the game.

I hope to add some new features to the game in the coming weeks. I was excited to see that the game already comes with a hidden level editor [(that you can access by adding `?edit` to the URL)](https://devpika.github.io/jumpy-balls-xr?edit), but there is no way yet to make any persistent levels. This just the kind of game for creating funky levels in a level editor! It would be great to share the levels using QR codes ala Mekorama:

![Mekorama level QR code](https://www.mekorama.com/press/mekorama-card-the-aviator-183x256.png)

Wait, I know, I know, I will leave you with the [link to the GitHub repo](https://github.com/DevPika/jumpy-balls-xr) before you start pointing the virtual cannon at me! I have opened a few issues in the repo hoping to get contributors interested. See you there!