---
layout: post
title: " Matrix Rain effect in p5js"
tags: ["Creative Coding", "p5js"]
---
Replicating the Matrix Code Rain effect in p5js.
<!--more-->

<!-- Copy and Paste Me -->
<div class="glitch-embed-wrap" style="height: 600px; width: 100%;">
  <iframe
    src="https://glitch.com/embed/#!/embed/p5js-matrix-glyphs?path=sketch.js&previewSize=100"
    title="p5js-matrix-glyphs on Glitch"
    allow="geolocation; microphone; camera; midi; encrypted-media; xr-spatial-tracking; fullscreen"
    allowFullScreen
    style="height: 100%; width: 100%; border: 0;">
  </iframe>
</div>

<br>

I tried to achieve [the famous Matrix Code / Green rain effect](https://en.wikipedia.org/wiki/Matrix_digital_rain) using p5js and a custom glyph generator. I repurposed the glyph generator from my previous [p5js Hanko Generator](https://glitch.com/~hanko-generator-p5js). To acheive the phosporescent screen effect, I initially tried to use a bloom effect, but that turned out to be quite intensive for the webpage. I ended up using some workarounds to achieve a fake bloom effect.

Find the entire project at [Glitch](https://glitch.com/~p5js-matrix-glyphs).