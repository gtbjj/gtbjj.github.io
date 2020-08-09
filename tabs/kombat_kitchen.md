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

<div style="text-align: center">
  <a href="#about" class="btn">About</a>
  <a href="#products" class="btn">Shop</a>
  <a href="#faq" class="btn">FAQs</a>
  <a href="#resources" class="btn">Resources</a>
  <a href="https://mailchi.mp/fdac34cf1d9c/kombat-kitchen-registration" class="btn">Newsletter</a>
</div>

<hr />

<ul id="about" class="expando" style="list-style-type: none; text-align: center">
  <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQxFU6ZmWySBILvTqktuvgcCAbu9YPy354K8QlZ10EJ7_-cLxOLT7fxQP8rg1jKB_56smODg-kOdmn3/embed?start=false&loop=false&delayms=3000" frameborder="0" width="auto" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</ul>

<ul id="faq" class="expando" style="list-style-type: none; text-align: center">
    <iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTf5Qb-xM_oTt3KmeNGqEfQdSTXKEu-Sxb4OGJhRfSiXSkx63H53px53nXNUv2XLGUU3iaBpTI6A7Xk/embed?start=false&loop=false&delayms=3000" frameborder="0" width="auto" height="auto" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
</ul>

<ul id="products" class="expando" style="list-style-type: none">
  {% for product in site.products %}
      <a href="{{ product.buy_now }}"><img src="{{ product.img }}" title="Buy Now" style="float: right; width: 40%; height: auto; margin-left: 2%"></a>
      <p><strong>{{ product.name }}</strong> <code>${{ product.price }}</code></p>
      <p>{{ product.content }}</p>
      <p style="text-align: right">
        <a href="{{ product.buy_now }}" class="btn" style="border: 1px solid; border-radius: 25px">Buy Now</a>
        <a href="{{ product.add_cart }}" class="btn" style="border: 1px solid; border-radius: 25px">Add to Cart</a>
        <a href="{{ product.view_cart }}" class="btn" style="border: 1px solid; border-radius: 25px">View Cart</a>
      </p>
      <hr>
  {% endfor %}
</ul>

<ul id="resources" class="expando" style="list-style-type: none">
  {% for resource in site.resources %}
        <a href="{{ resource.link }}"><img src="{{ resource.img }}" style="float: right; width: 8%; height: auto; margin-left: 2%"></a>
        <p>
            <strong><a href="{{ resource.link }}">{{ resource.name }}</a></strong>
            <br>
            <i>by {{ resource.author }}</i>
            <br>
            {{ resource.type }}
        </p>
        <hr>
  {% endfor %}
</ul>
