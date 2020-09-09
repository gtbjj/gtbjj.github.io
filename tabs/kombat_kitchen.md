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
</p>

<hr>

<p style="text-align: center">
  <a class="btn" href="https://kombat-kitchen-store.weeblysite.com">Store</a>
  <a class="btn" href="#faq">FAQs</a>
  <a class="btn" href="https://t.me/kombatkitchen">Community</a>
  <a class="btn" href="#reviews">Reviews</a>
</p>

<ul id="faq" class="expando" style="list-style-type: none; text-align: center">
    <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLmMb6kv15DKA15bijnWPxYw9BBqBucuff" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <br>
    To have your questions featured, send me a message on <a href="https://t.me/savagezen">Telegram</a> or on <a href="https://instagram.com/savagezen">Instagram</a>.
</ul>

<ul id="products" class="expando" style="list-style-type: none">
  {% for product in site.products %}
      <a href="{{ product.buy_now }}"><img src="{{ product.img }}" title="Buy Now" style="float: right; width: 20%; height: auto; margin-left: 2%"></a>
      <p><strong style="margin-left: 2%">{{ product.name }}</strong>  <code>${{ product.price }}</code></p>
      <p>{{ product.content }}</p>
      {% if product.type == "program" %}
        <p style="text-align: right">
          <a href="{{ product.buy_now }}" title="${{ product.price }}">
            Buy Now:  <i class="fas fa-2x fa-file-download" style="margin-left: 1%; margin-right: 1%"></i>
          </a>
          <a href="{{ product.amazon }}" title="Buy on Amazon Kindle"><i class="fab fa-2x fa-amazon" style="margin-right: 1%"></i></a>
          <a href="https://play.google.com/strore/books" title="Guy on Google Books"><i class="fab fa-2x fa-google-play"></i></a>
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

<ul id="reviews" class="expando" style="list-style-type: none">
  {% for review in site.reviews %}
    <li>
      <code>{{ review.content }}</code>
      {{ review.name }}
      <hr>
    </li>
  {% endfor %}
</ul>

<hr>

<p style="text-align: center">
  Kombat Kitchen provides 30-day challenges to improve your:
  <div style="width: 60%; margin-left: 20%; margin-right: 20%">
  <ul>
    <li>metabolic health,</li>
    <li>fitness,</li>
    <li>community relationships, and</li>
    <li>mental health.</li>
  </ul>
  </div>
</p>
<p style="text-align: center">
  Start the <code>#fightforyourhealth</code> today.
  <br>
  Join for <a href="https://t.me/kombatkitchen">FREE</a>!
  <br>
</p>

<hr>

{% include carousel.html height="50" unit="%" duration="3" %}

<!--
<p style="text-align: center">
  <a href="https://heartandsoilsupplements.com">
    <img src="/assets/img/icon_heart-and-soil.png" style="width: 15%; height: auto" title="Heart & Soil Supplements" />
  </a>
  <br>
  Save 10% on <a href="https://heartandsoilsupplements.com">Heart & Soil Supplements</a> with code <code>savagezen10</code>.
</p>
<p style="text-align: center; margin-bottom: -5%">
  <i>Check out <a href="/tabs/about/#affiliates">our other affiliates</a>!</i>
</p>
-->
