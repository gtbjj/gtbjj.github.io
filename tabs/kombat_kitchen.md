---
title: Kombat Kitchen

# v2.0
# https://github.com/cotes2020/jekyll-theme-chirpy
# © 2017-2019 Cotes Chung
# MIT License
toc: true
---

<!-- Introduction -->

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQxFU6ZmWySBILvTqktuvgcCAbu9YPy354K8QlZ10EJ7_-cLxOLT7fxQP8rg1jKB_56smODg-kOdmn3/embed?start=false&loop=true&delayms=10000" frameborder="0" width="100%" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

<!-- FAQ -->

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTf5Qb-xM_oTt3KmeNGqEfQdSTXKEu-Sxb4OGJhRfSiXSkx63H53px53nXNUv2XLGUU3iaBpTI6A7Xk/embed?start=false&loop=true&delayms=3000" frameborder="0" width="100%" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

<hr />

<style>
.expando {
  display: none;
}
.expando:target {
  display: block;
}
</style>

<div style="text-align: center">
  <a href="#products" class="btn">Products</a>
  <a href="#podcasts" class="btn">Podcasts</a>
  <a href="#amazon" class="btn">Amazon Store</a>
  <a href="https://mailchi.mp/fdac34cf1d9c/kombat-kitchen-registration" class="btn">Newsletter</a>
  <a href="http://carnivorejiujitero.com/feed.xml" class="btn">RSS Feed</a>
</div>

<hr />

<ul id="products" class="expando" style="list-style-type: none">
  {% for product in site.products %}
    <li>
      <div>{{ product.content }}</div>
        <p><strong>{{ product.name }}</strong> <code>${{ product.price }}</code></p>
        <p><i>{{ product.description }}</i></p>
          <p style="text-align: right">{{ product.buttons }}</p>
    </li>
  {% endfor %}
</ul>

<ul id="podcasts" class="expando" style="list-style-type: none">
  {% for podcast in site.media_resources %}
    <a href="{{ podcast.source }}"><img src="{{ podcast.image }}" style="width: 30%; height: auto"></a>
  {% endfor %}
</ul>

<ul id="amazon" class="expando" style="list-style-type: none">
  {% for product in site.amazon %}
    <div style="text-align: center" title="{{ product.name }}">{{ product.content }}</div>
  {% endfor %}
</ul>
