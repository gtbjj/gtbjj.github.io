---
title: Kombat Kitchen

# v2.0
# https://github.com/cotes2020/jekyll-theme-chirpy
# © 2017-2019 Cotes Chung
# MIT License
toc: true
---

<!-- Introduction -->

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQxFU6ZmWySBILvTqktuvgcCAbu9YPy354K8QlZ10EJ7_-cLxOLT7fxQP8rg1jKB_56smODg-kOdmn3/embed?start=false&loop=true&delayms=10000" frameborder="0" width="480" height="299" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

<!-- FAQ -->

<iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTf5Qb-xM_oTt3KmeNGqEfQdSTXKEu-Sxb4OGJhRfSiXSkx63H53px53nXNUv2XLGUU3iaBpTI6A7Xk/embed?start=false&loop=true&delayms=3000" frameborder="0" width="480" height="299" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>

<hr />

<!-- Registration -->

**How do I register for Kombat Kitchen?**

Currently only the White Belt program is avaialable, and for pre-registered beta testers.  Once other programs are released you will be able to purchase them in the featured products list below.  To stay up to date on the most current releases, subscribe to our [newsletter](https://mailchi.mp/fdac34cf1d9c/kombat-kitchen-registration) or [RSS feed](http://localhost:4000/feed.xml).

<hr />

<!-- store -->

<h3 style="text-align: center">Store</h3>

<hr />

<ul style="list-style-type: none">
  {% for product in site.products %}
    <li>
      <div style="">{{ product.content }}</div>
      <p><strong>{{ product.name }}</strong> <code>${{ product.price }}</code></p>
      <p><i>{{ product.description }}</i></p>
      <p style="text-align: right">{{ product.buttons }}</p>
    </li>
  {% endfor %}
</ul>
