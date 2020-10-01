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

Welcome to the Kombat Kitchen!  We help:

<ul>
    <li><strong>Athletes</strong>, specifically combat sports athletes, improve their mental and metabolic health so that they can improve perform better in competition and reduce stress and anxiety in their lives.</li>
    <li><strong>Everyday people</strong> lose weight without feeling deprived and build strength and energy to rediscover your vitality so that you can feel like food is your friend and live an active life you enjoy.</li>
</ul>

What's it like working with us?

<ul>
    <li>Take a look at one of our <a href="https://kombat-kitchen.square.site/shop/e-books/4">FREE E-books</a>, </li>
    <li>read <a href="#reviews">reviews from clients</a>, </li>
    <li>or read <a href="{% post_url 2020-09-24-change-maker-abilities %}">what our colleagues say about us</a>.</li>
</ul>

Who am I?

<ul style="list-style-type: none">
    <li>
        I am a <a href="https://www.precisionnutrition.com/certified-coach-directory">Precision Nutrition</a> certified coach (PN1) and a <a href="http://verify.sos.ga.gov/verification/">licensed mental health provider</a> (LAPC).  I am purple belt in Brazilian Jiu Jitsu and have a passion for bringing animal-based / nose-to-tail nutrition to combat sports athletes.  I'm also adamant about supporting sustainable and regenerative agriculture.  My personal health journey is well documented in <a href="/">the blog on this site</a>.
    </li>
</ul>

---

<p style="text-align: center">
    <a class="btn" href="https://kombat-kitchen-store.weeblysite.com/product/coaching/16?cp=true&sa=true&sbp=false&q=false">Nutrition Coaching</a>
    <a class="btn" href="#products">Products</a>
    <a class="btn" href="https://castbox.fm/ch/2937016">Podcast</a>
    <a class="btn" href="#reviews">Reviews</a>
</p>

---

<!-- hidden sections -->

<ul id="products" class="expando" style="list-style-type: none">
    <li>
        <strong>Heart & Soil Supplements</strong>
        <br>
        <img src="/assets/img/icon_heartandsoil5.png" style="float: right; width: 40%; height: auto">
        <br>
        Freeze dried beef organ supplements made from grass-fed, grass-finished, <a href="https://heartandsoil.co/pages/land-regeneration">regeneratively raised cattle</a> that provide <a href="https://heartandsoil.co/pages/nose-to-tail">nose-to-tail nutrition</a> on the go and on the run.  Beef organs provide a range of benefits from improving athletic performance and libido, to immune and digestive function, to joint health and mood.  <code>Save 10%</code> with the code <code>savagezen10</code>.
        <br>
        <a class="btn" href="https://heartandsoil.co">Shop Now</a>
        <hr>
    </li>
    <li>
        <strong>Tru Beef</strong>
        <br>
        <img src="/assets/img/icon_trubeef.jpg" style="float: right; width: 40%; height: auto">
        <br>
        Tru Beef provides grass-fed, pasture-raised beef that is 100% USDA certified organic and utilizes sustainable, <a href="https://truorganicbeef.com/pages/trubeef-is-carbon-neutral">carbon-neutral</a> farming practices.  They are also part of the Global Animal Partnership.  <code>Save $25</code> using the link / button below.
        <br>
        <a class="btn" title="save 10% with code: savagezen10" href="http://trubeeftruorganicb.refr.cc/austinh">Shop Now</a>
        <hr>
    </li>
    <li>
        <strong>Flyby Electrolytes</strong>
        <br>
        <img src="/assets/img/icon_flyby.png" style="float: right; width: 40%; height: auto">
        <br>
        Flyby offers a great tasting, all-natural electrolyte supplement that is about 3x as concentrated as commercial sport's drinks at about half the cost.  The powder mix contains no fillers and no extra "vitamins", just the electrolytes you want and need.  Best of all, it's low sodium, so you can add salt as your training or the weather demands.
        <br>
        <a class="btn" title="save $25 using this link" href="https://www.flyby.co/?rfsn=4562479.acaf32">Shop Now</a>
        <hr>
    </li>
    <li>
        <strong>Submission Shark Apparel</strong>
        <br>
        <img src="/assets/img/icon_submissionshark.png" style="float: right; width: 40%; height: auto">
        <br>
        <code>Coming Soon!</code>
    </li>
</ul>

<ul id="reviews" class="expando" style="list-style-type: none">
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

