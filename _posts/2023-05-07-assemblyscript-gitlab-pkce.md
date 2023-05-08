---
layout: post
title: "AssemblyScript editor with GitLab snippets"
tags: ["WASM", "AssemblyScript", "Web", "OAuth"]
timeline-type: ['Posts']
---

With GitLab OAuth2 PKCE authentication
<!--more-->

As the WASI API gets a more solid shape, WebAssembly (shortened to WASM) has immense potential to become the ultimate cross-platform build target. Taking the concept forward are languages like [AssemblyScript](https://assemblyscript,org) that make compiling code in the browser look easy!

Want to see the power of WebAssembly? See [this epic project by Peter Salomonsen](https://www.youtube.com/watch?v=C8j_ieOm4vE) which offers a flexible way to create music right in the browser, including realtime MIDI input support! The project page is [here](https://petersalomonsen.com/wasm-music/).

While the editor on the AssemblyScript homepage does include a way to share the code you are working on, it would be nice to share it in a more legible format, say through GitHub Gists. This would however mean OAuth authentication in a simple client / frontend setup, so no storing of client secrets! To make it worse, GitHub doesn't allow CORS authentication.

GitLab to the rescue! [GitLab supports](https://docs.gitlab.com/ee/api/oauth2.html#authorization-code-with-proof-key-for-code-exchange-pkce) the increasingly recommended and secure [OAuth2 PKCE flow](https://developer.okta.com/blog/2019/08/22/okta-authjs-pkce), including CORS authentication! I have a simple integration in place already [here](https://devpika.github.io/as-editor/) that allows an authenticated user to create public and private snippets. As I am not storing the access and refresh tokens yet, the creation flow is a bit unintuitive, requiring the user to press Create Snippet through the share menu, login through GitLab and then press the Create Snippet button again, this time with the correct content in the files. Fixing this, persisting file and project details between refreshes (through localStorage) and snippet loading are on my radar. You can find [the full repo on GitHub](https://github.com/DevPika/as-editor).
