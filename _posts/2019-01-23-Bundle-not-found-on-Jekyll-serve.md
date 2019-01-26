---
layout: post
title:  "[SOLVED] Error with bundle(r) when running 'jekyll serve'"
excerpt:  "Solution for 'bundle' not found when running 'jekyll serve'"
category:
- linux
tags:
- linux
- arch
- troubleshoot
- ruby
- gems
- bundler
- jekyll
comments: true
---

This very blog runs on Jekll (:-D) and while running the local server via ```$ bundle exec jekyll serve``` I got the error ```zsh: command not found: bundle```.

After a quick Google search, I reinstalled the bundler ruby gem via ```$ gem install bundler```.

Trying to run the Jekyll serve command again, I got an error from ruby that bundler required an update.  So, following the directions from the output i did ```$ bundle update --bundler```.

That resolved the issue and I was able to run my Jekyll server normally.