---
title: Error with Bundle and Jekyll
author: Austin
date: 2019-01-23
categories: [Linux]
tags: [linux, troubleshoot, ruby, gems, bundler, jekyll]
---

This very blog runs on Jekll (:-D) and while running the local server via ```$ bundle exec jekyll serve``` I got the error ```zsh: command not found: bundle```.

After a quick Google search, I reinstalled the bundler ruby gem via ```$ gem install bundler```.

Trying to run the Jekyll serve command again, I got an error from ruby that bundler required an update.  So, following the directions from the output i did ```$ bundle update --bundler```.

That resolved the issue and I was able to run my Jekyll server normally.
