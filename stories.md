---
title: Success 
layout: landing
description: 'Stories of Our Clients'
image: assets/images/pixabay_online-shopping_parcel_1280.jpg
nav-menu: false
show_tile: true
---


<div id="main">

<div class="inner">
<!-- One -->
<section id="one" class="spotlights">
		<div class="content">
			<div class="inner">
		
<p>Here we collect stories of our clients. You may call it an portfolio of our work. The stories are anonymised. The work in the back office of our clients is not meant for the public. Thiese stories included the experience of our co-worker and partners, which is the base founding of our work.</p>
            </div>
        </div>
        
{% for item in site.portfolio %}
    <section>	
		<a href="{{ item.url }}" class="image">
			<img src="{{ item.image }}" alt="" data-position="center center" />
		</a>
		<div class="content">
			<div class="inner">
				<header class="major">
					<h3><a href="{{ item.url }}">{{ item.title }}</a></h3>
				</header>
	            <p>{{ item.description }}</p>
			</div>
		 </div>
    </section>

{% endfor %}
   
</section>


