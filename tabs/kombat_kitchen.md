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
  <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLmMb6kv15DKDc8qC7WVqL8ahX-IGdF0KE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  <br>
  Start the fight for your health today for FREE:
  <br>
  <a href="https://t.me/kombatkitchen">Join our Telegram group</a>.
  <br>
  <a href="http://localhost:4000/tabs/kombat_kitchen/#products"> Download the White Belt Challenge</a>.
</p>

<hr>

<div style="text-align: center">
  <a href="#products" class="btn">Shop</a>
  <a href="#faq" class="btn">FAQs</a>
  <a href="#resources" class="btn">Resources</a>
  <a href="/tabs/about/#affiliates" class="btn">Friends</a>
  <a href="https://mailchi.mp/fdac34cf1d9c/kombat-kitchen-registration" class="btn">Newsletter</a>
</div>

<hr>

<ul id="faq" class="expando" style="list-style-type: none; text-align: center">
    <i>Video series coming soon!</i>
    <br>
    To have your questions featured, send me a message on <a href="https://t.me/savagezen">Telegram</a> or on <a href="https://instagram.com/savagezen">Instagram</a>.
    <!--
    <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTf5Qb-xM_oTt3KmeNGqEfQdSTXKEu-Sxb4OGJhRfSiXSkx63H53px53nXNUv2XLGUU3iaBpTI6A7Xk/embed?start=false&loop=false&delayms=3000" frameborder="0" width="auto" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
    -->
    <hr>
</ul>

<ul id="products" class="expando" style="list-style-type: none">
  {% for product in site.products %}
      <a href="{{ product.buy_now }}"><img src="{{ product.img }}" title="Buy Now" style="float: right; width: 20%; height: auto; margin-left: 2%"></a>
      <p><strong style="margin-left: 2%">{{ product.name }}</strong></p>
      <p>{{ product.content }}</p>
      {% if product.type == "program" %}
        <p style="text-align: right">
          <a href="{{ product.buy_now }}" title="Buy Direct on SendOwl ${{ product.price }}">
            Buy Now:  <i class="fas fa-2x fa-file-download" style="margin-left: 1%; margin-right: 1%"></i>
          </a>
          <a href="{{ product.amazon }}" title="Buy on Amazon Kindle"><i class="fab fa-2x fa-amazon" style="margin-right: 1%"></i></a>
          <a href="https://play.google.com/strore/books" title="Coming Soon!"><i class="fab fa-2x fa-google-play"></i></a>
        </p>
      {% else %}
        <p style="text-align: right">
          <a href="{{ product.buy_now }}" title="${{ product.price }}">
            Buy Now <i class="fa fa-2x fa-credit-card" style="margin-right: 1%"></i>
          </a>
        </p>
      {% endif %}
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
  <i>Join the <a href="https://www.instagram.com/explore/tags/fightforyourhealth/">#fightforyourhealth</a> on <a href="https://twitter.com/search?q=kombatkitchen&src=typed_query&f=live">Twitter</a> and <a href="https://www.instagram.com/explore/tags/kombatkitchen/">Instagram</a>!</i>
</p>
