---
title: Kombat Kitchen

# v2.0
# https://github.com/cotes2020/jekyll-theme-chirpy
# © 2017-2019 Cotes Chung
# MIT License
toc: true
---

<!-- Introduction -->

<p style="text-align: center"><iframe src="https://docs.google.com/presentation/d/e/2PACX-1vQxFU6ZmWySBILvTqktuvgcCAbu9YPy354K8QlZ10EJ7_-cLxOLT7fxQP8rg1jKB_56smODg-kOdmn3/embed?start=false&loop=true&delayms=10000" frameborder="0" width="480" height="299" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe></p>

<!-- FAQ -->

<p style="text-align: center"><iframe src="https://docs.google.com/presentation/d/e/2PACX-1vTf5Qb-xM_oTt3KmeNGqEfQdSTXKEu-Sxb4OGJhRfSiXSkx63H53px53nXNUv2XLGUU3iaBpTI6A7Xk/embed?start=false&loop=true&delayms=3000" frameborder="0" width="480" height="299" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe></p>

<hr />

<!-- Registration -->

**How do I register for Kombat Kitchen?**

Currently only the White Belt program is avaialable, and for pre-registered beta testers.  Once other programs are released you will be able to purchase them in the featured products list below.  To stay up to date on the most current releases, subscribe to our [newsletter](https://mailchi.mp/fdac34cf1d9c/kombat-kitchen-registration) or [RSS feed](http://localhost:4000/feed.xml).

<hr />

<!-- store -->

<!--

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

-->

<!-- NEW -->

<style>
/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  text-align: center;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
</style>

<!--
<h2 style="text-align:center">Store</h2>
-->

<div class="tab" style="width:100%; text-align:center">
  <button class="tablinks" onclick="openCity(event, 'Programs')">Programs & Products</button>
  <button class="tablinks" onclick="openCity(event, 'Products')">Amazon Store</button>
  <button class="tablinks" onclick="openCity(event, 'Resources')">Resources</button>
</div>

<div id="Programs" class="tabcontent">
  <ul style="list-style-type: none">
    {% for product in site.products %}
      <li>
        <div>{{ product.content }}</div>
          <p><strong>{{ product.name }}</strong> <code>${{ product.price }}</code></p>
          <p><i>{{ product.description }}</i></p>
          <p style="text-align: right">{{ product.buttons }}</p>
      </li>
    {% endfor %}
  </ul>
</div>

<div id="Products" class="tabcontent">
  <style>
    /*  SECTIONS  */
    .section {
      clear: both;
      padding: 0px;
      margin: 0px;
    }

    /*  COLUMN SETUP  */
    .col {
      display: block;
      float:left;
      margin: 1% 0 1% 1.6%;
    }
    .col:first-child { margin-left: 0; }

    /*  GROUPING  */
    .group:before,
    .group:after { content:""; display:table; }
    .group:after { clear:both;}
    .group { zoom:1; /* For IE 6/7 */ }

    /*  GRID OF THREE  */
    .span_3_of_3 { width: 100%; }
    .span_2_of_3 { width: 66.13%; }
    .span_1_of_3 { width: 32.26%; }

    /*  GO FULL WIDTH BELOW 480 PIXELS */
    @media only screen and (max-width: 480px) {
    .col {  margin: 1% 0 1% 0%; }
    .span_3_of_3, .span_2_of_3, .span_1_of_3 { width: 100%; }
    }
  </style>
  <div class="section group" style="text-align: center">
    <div class="col span_1_of_3">
      <h3>Health</h3>
      <hr><br/>
      <ul style="list-style-type: none">
        {% for product in site.amazon_nutrition %}
          <li>
            <div>{{ product.name }}</div>
            <div>{{ product.content }}</div>
          </li>
        {% endfor %}
      </ul>
    </div>
    <div class="col span_1_of_3" style="text-align: center">
      <h3>Gear</h3>
      <hr><br/>
      <ul style="list-style-type: none">
        {% for product in site.amazon_gear %}
          <li>
            <div>{{ product.name }}</div>
            <div>{{ product.content }}</div>
          </li>
        {% endfor %}
      </ul>
    </div>
    <div class="col span_1_of_3" style="text-align: center">
      <h3>Books</h3>
      <hr><br />
      <ul style="list-style-type: none">
        {% for product in site.amazon_books %}
          <li>
            <div>{{ product.name }}</div>
            <div>{{ product.content }}</div>
          </li>
        {% endfor %}
      </ul>
    </div>
  </div>
</div>

<div id="Resources" class="tabcontent">
  <ul style="list-style-type: none">
    {% for podcast in site.media_resources %}
      <li>
        <div><a href="{{ podcast.source }}">{{ podcast.image }}</div></a>
      </li>
    {% endfor %}
  </ul>


<!--
  <p style="text-align: center">
  <a href="https://castbox.fm/channel/The-Healthy-Rebellion-Radio-id2434386?country=us"></a>
    <img src="https://is3-ssl.mzstatic.com/image/thumb/Podcasts123/v4/15/b7/43/15b743de-be23-3291-4a83-348c127fda38/mza_14223100350029258018.jpg/400x400bb.jpg" style="width: 30%; height: auto">
  <a href="https://castbox.fm/channel/The-Natural-State-with-Dr.-Anthony-Gustin-id1366332?country=us">
    <img src="https://is5-ssl.mzstatic.com/image/thumb/Podcasts113/v4/b6/12/d5/b612d5fe-1823-58e9-b99f-82a1b985bdb7/mza_10226172659541961564.jpg/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/Fundamental-Health-with-Paul-Saladino%2C-MD-id2108592?country=us">
    <img src="https://is5-ssl.mzstatic.com/image/thumb/Podcasts113/v4/6b/48/17/6b481762-cb4e-8db8-520a-e733b6886dd6/mza_5090688504817224065.jpg/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/Human-Performance-Outliers-Podcast-id1364874?country=us">
    <img src="https://is1-ssl.mzstatic.com/image/thumb/Podcasts128/v4/03/bc/1b/03bc1b39-4e4b-f025-5cc1-0f59d79ebfd7/mza_6857803056447260847.png/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/Ben-Greenfield-Fitness-id1364807?country=us">
    <img src="https://is1-ssl.mzstatic.com/image/thumb/Podcasts123/v4/c2/e0/5d/c2e05d53-5fe2-6458-3971-aceb655ff899/mza_6788649077697036072.png/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/The-Learner-Lab-id2014741?nojump=1&country=us">
    <img src="https://is1-ssl.mzstatic.com/image/thumb/Podcasts123/v4/d7/6e/17/d76e1746-8e5c-d04d-e985-d489e3a28457/mza_2321867806379015431.jpg/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/Peak-Human---Unbiased-Nutrition-Info-for-Optimum-Health%2C-Fitness-%26-Living-id1308093?nojump=1&country=us">
    <img src="https://ssl-static.libsyn.com/p/assets/3/7/4/a/374a47e445694384/peak_human_me_copy.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/The-Matburn-Podcast-id2183716?nojump=1&country=us">
    <img src="https://is5-ssl.mzstatic.com/image/thumb/Podcasts113/v4/7f/5f/1b/7f5f1bba-06c3-01ae-3d7e-f330f8ebd8b1/mza_4289064147766459878.jpg/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/The-Chewjitsu-Podcast-id1393919?nojump=1&country=us">
    <img src="https://ssl-static.libsyn.com/p/assets/d/8/6/c/d86c05fdfdce5205/Podcast_Itunes_1.png" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/Grounded-Podcast-id2358177?nojump=1&country=us">
    <img src="https://is4-ssl.mzstatic.com/image/thumb/Podcasts123/v4/75/36/85/753685fd-f3ea-c43a-a253-9262bd934f3a/mza_3154932434494830232.jpg/400x400bb.jpg" style="width: 30%; height: auto">
  </a>
  <a href="https://castbox.fm/channel/KNOW-FEAR-with-Tony-Blauer-id1155411?nojump=1&country=us">
    <img src="https://ssl-static.libsyn.com/p/assets/0/4/3/c/043c39739a6b8376/Screen_Shot_2018-01-05_at_5.12.25_PM.png" style="width: 30%; height: auto">
  </a>
  </p>
-->
</div>

<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
