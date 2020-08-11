---
title: Kombat Kitchen

# v2.0
# https://github.com/cotes2020/jekyll-theme-chirpy
# © 2017-2019 Cotes Chung
# MIT License
toc: true
---

<style>
.expando {
  display: none;
}
.expando:target {
  display: block;
}
</style>

<p style="text-align: center">
  <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQxFU6ZmWySBILvTqktuvgcCAbu9YPy354K8QlZ10EJ7_-cLxOLT7fxQP8rg1jKB_56smODg-kOdmn3/embed?start=false&loop=false&delayms=3000" frameborder="0" width="auto" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
  <br>
  <a href="https://www.facebook.com/Kombat-Kitchen-634691730500703" style="margin-left: 2%"><i class="fab fa-2x fa-facebook"></i></a>
  <a href="https://twitter.com/carnivorebjj" style="margin-left: 2%"><i class="fab fa-2x fa-twitter"></i></a>
  <a href="https://instagram.com/savagezen" style="margin-left: 2%"><i class="fab fa-2x fa-instagram"></i></a>
  <a href="https://youtube.com/c/AustinHaedicke" style="margin-left: 2%"><i class="fab fa-2x fa-youtube"></i></a>'
  <a href="https://linkedin.com/in/AustinHaedicke" style="margin-left: 2%"><i class="fab fa-2x fa-linkedin"></i></a>
</p>

<div style="text-align: center">
  <a href="#products" class="btn">Shop</a>
  <a href="#faq" class="btn">FAQs</a>
  <a href="#resources" class="btn">Resources</a>
  <a href="/#affiliates" class="btn">Friends</a>
  <a href="https://mailchi.mp/fdac34cf1d9c/kombat-kitchen-registration" class="btn">Newsletter</a>
</div>

<hr>

<ul id="faq" class="expando" style="list-style-type: none; text-align: center">
    <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTf5Qb-xM_oTt3KmeNGqEfQdSTXKEu-Sxb4OGJhRfSiXSkx63H53px53nXNUv2XLGUU3iaBpTI6A7Xk/embed?start=false&loop=false&delayms=3000" frameborder="0" width="auto" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</ul>

<ul id="products" class="expando" style="list-style-type: none">
  {% for product in site.products %}
      <a href="{{ product.buy_now }}"><img src="{{ product.img }}" title="Buy Now" style="float: right; width: 20%; height: auto; margin-left: 2%"></a>
      <p><strong style="margin-left: 2%">{{ product.name }}</strong></p>
      <p>{{ product.content }}</p>
      <p style="text-align: right">
        <a href="{{ product.buy_now }}" title="{{ product.price }}">
          Buy Now:  <i class="fas fa-2x fa-file-download" style="margin-left: 1%; margin-right: 1%"></i>
        </a>
        <a href="" title="Coming Soon!"><i class="fab fa-2x fa-amazon" style="margin-right: 1%"></i></a>
        <a href="" title="Coming Soon!"><i class="fab fa-2x fa-google-play"></i></a>
      </p>
      <hr>
  {% endfor %}
</ul>

<ul id="resources" class="expando" style="list-style-type: none">
  {% for resource in site.resources %}
        <a href="{{ resource.link }}"><img src="{{ resource.img }}" style="float: right; width: 20%; height:25% ; margin-left: 2%"></a>
        <p style="margin-bottom: 20%">
            <strong><a href="{{ resource.link }}">{{ resource.name }}</a></strong>
            <br>
            <i>by {{ resource.author }}</i>
            <br>
            {{ resource.type }}
        </p>
        <hr>
  {% endfor %}
</ul>

<p style="text-align: center">
  <strong>What People Are Saying About Kombat Kitchen:</strong>
  <br>
    <ul style="list-style-type: none">
      {% for review in site.reviews %}
        <li>
          <code>{{ review.content }}</code>
          {{ review.name }}
          <hr>
        </li>
      {% endfor %}
    </ul>
  <br>
  <i>Join the fight for your health on <a href="https://twitter.com/search?q=kombatkitchen&src=typed_query&f=live">Twitter</a> and <a href="https://www.instagram.com/explore/tags/kombatkitchen/">Instagram</a>!</i>
</p>
