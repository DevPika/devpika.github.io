---
layout: post
title: "Poke! Fake Galleons, WebPush and PWAs"
tags: ["Web", "PWA", "Watch"]
image: "/assets/images/blog/poke-icon.png"
timeline-type: ['Pinned', 'Posts']
---

"Poke" your friends and family, straight from your smart band!
<!--more-->

![Poke app diagram explanation](/assets/images/blog/poke-hops.png)

Ever since I read about Hermione's fake galleons that could be used to communicate the next meeting's date and time in Harry Potter and the Order of Phoenix, the idea has made a permanent house in my mind. My previous attempt to create an AR "fake-galleon" app based on a QR-code physical token/shared secret led to me learning quite a few things about [SubtleCrypto](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto) and making a REST API using [the minimalist Python backend framework, Falcon](https://falcon.readthedocs.io/en/stable/), but I never completed it. While I might pick it up another day, I wanted to see if I could make something with my new Amazfit Band 7 fitness band/ smart watch. Borrowing ideas from old-school pager buzzes and Facebook's feature to "poke" a friend as a way of getting their attention, I set out to create a set of apps that would enable this. I wanted to tap a button on my watch, which would send a message to the Zepp Android App, which should then be able to somehow send a notification to all connected devices?!? As I had already created some simple apps for the watch like [Random Cat Fact fetcher and other watch faces](https://github.com/DevPika/band7-cat-facts), I knew I could reuse that code for the watch app side. So what remained? Well, almost everything major.

I needed a way to send updates to all the registered devices. A PWA that could show notifications should do the trick. I looked into how I could send notifications to connected devices, which introduced me to the world of WebPush, Firebase Cloud Messaging and VAPID authentication schemes. I wanted to create my own API endpoints that devices could register to and then receive VAPID-secured notifications.

The [server](https://web.dev/push-notifications-server-codelab/) and [client](https://web.dev/push-notifications-client-codelab/) codelabs from web.dev came in really handy at this point, as it had the base Express server with some default endpoints set up to register and push notifications to connected clients. I wrapped up the client into a PWA, complete with custom icons, and set up some other endpoints to send customized messages within the PWA (while still allowing for a default notification from devices like a smart watch). I asked a few people from my family and friends to test it out and it seems to work! Find the full source to the app on the watch, server and PWA [on my GitHub](https://github.com/DevPika/band7-poke).