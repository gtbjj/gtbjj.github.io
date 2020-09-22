---
title: Kombat Kitchen

# v2.0
# https://github.com/cotes2020/jekyll-theme-chirpy
# © 2017-2019 Cotes Chung
# MIT License
toc: true
---

<!-- styling for hidden sections -->

<style>
.expando {
  display: none;
}
.expando:target {
  display: block;
}
</style>

<p style="text-align: center">
  <a class="btn" href="#faq">About / FAQs</a>
  <a class="btn" href="#services">Services</a>
  <a class="btn" href="https://kombat-kitchen.square.site/">Store</a>
  <a class="btn" href="https://castbox.fm/ch/2937016">Podcast</a>
  <a class="btn" href="#reviews">Reviews</a>
</p>

The Kombat Kitchen is a nutritional coaching program with two primary goals:

<ul>
  <li><i>Improve the performance</i> of athletes through nutrition, and</li>
  <li><i>Empower everyday people</i> to <code>#fightforyourhealth.</code></li>
</ul>

We consider health multi-dimensional and address each of the following <strong>Four Pillars</strong>:

<ul>
  <li>Nutrition (metabolic health),</li>
  <li>Fitness (physical health),</li>
  <li>Mindset (mental health), and</li>
  <li>Community (social health).</li>
</ul>

<strong>About Me</strong>:  I am the only <a href="https://www.precisionnutrition.com/certified-coach-directory">Precision Nutrition</a> certified coach in Villa Rica, GA and one of less than 10 in the Carroll-Douglas-Paulding County area.  I am also the only one of those nutrition coaches to be credentialed in mental health as well.  You can <a href="/tabs/about">learn more about me</a> and <a href="/">my journey</a> by taking a look around this site.

<div style="text-align: center">
  <strong>
    <a class="btn" style="border: 1px solid; border-radius: 25px" href="https://kombat-kitchen-store.weeblysite.com/product/coaching/16?cp=true&sa=true&sbp=false&q=false">Book Nutrition Coaching Now!</a>
  </strong>
  <br>
  <br>
    <a style="margin-left: 2%" href="https://linkedin.com/in/{{ site.linkedin.username }}" target="_blank">
      <i class="fab fa-2x fa-linkedin"></i>
    </a>
    <a style="margin-left: 2%" href="https://instagram.com/{{ site.instagram.username }}" target="_blank">
      <i class="fab fa-2x fa-instagram"></i>
    </a>
    <a href="https://www.facebook.com/Kombat-Kitchen-634691730500703" style="margin-left: 2%" target="_blank">
      <i class="fab fa-2x fa-facebook"></i>
    </a>
    <a style="margin-left: 2%" href="https://twitter.com/{{ site.twitter.username }}" target="_blank">
      <i class="fab fa-2x fa-twitter"></i>
    </a>
  <br>
</div>

<!-- hidden sections -->

<ul id="faq" class="expando" style="list-style-type: none; text-align: center">
    <hr>
    <strong style="text-align: center">About / FAQs</strong>
    <br>
    <br>
    <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLmMb6kv15DKA15bijnWPxYw9BBqBucuff" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    <br>
    To have your questions featured, send me a message on <a href="https://t.me/savagezen">Telegram</a> or on <a href="https://instagram.com/savagezen">Instagram</a>.
</ul>

<ul id="services" class="expando" style="list-style-type: none; text-align: center">
  <hr>
  <strong style="text-align: center"><u>Services</u></strong>
  <br>
  <br>
  <div style="text-align: center">
    <a class="btn" href="https://kombat-kitchen-store.weeblysite.com/shop/challenge-programs/2">E-Books</a>
    <a class="btn" href="https://kombat-kitchen-store.weeblysite.com/shop/supplements/4">Supplements</a>
    <a class="btn" href="https://t.me/kombatkitchen">Community</a>
    <a class="btn" href="https://kombat-kitchen-store.weeblysite.com/product/coaching/16?cp=true&sa=true&sbp=false&q=false">Coaching</a>
  </div>
  <br>
  <br>
</ul>

<ul id="reviews" class="expando" style="list-style-type: none">
  <hr>
  <strong style="text-align: center">Reviews</strong>
  <br>
  <br>
  {% for review in site.reviews %}
    <li>
      <code>{{ review.content }}</code>
      {{ review.name }}
      <hr>
    </li>
  {% endfor %}
</ul>

<!-- old manual / self hosted store

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
-->

<!-- affiliate ads -->

<hr>

{% include carousel.html height="45" unit="%" duration="3" %}
