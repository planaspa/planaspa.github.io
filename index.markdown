---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Pablo Lanaspa
post_pic: /assets/img/bio_img.png
summary: "Sitio web personal de Pablo Lanaspa. Publico opiniones personales acerca de la economía digital."
---
<div class="home_page">
    <div class="home_page_left">
        <div class="home_page_left_biobox">

            <div class="card text-center border-0" style="width: 100%; margin-top: 20px">
              <img class="card-img-top mx-auto my-auto" src="{{ page.post_pic }}" alt="Imagen de perfil de Pablo" style="border-radius: 50%; max-height: 100px; max-width: 100px; height: auto; width:auto; ">
              <div class="card-body">
                <h1 class="card-title" style="margin-top: 0; font-size: xx-large;">#InformeLanaspa</h1>
                <h5 class="text-muted" style="margin-top: 0">Pablo Lanaspa Ferrer</h5>
                <p>Una newsletter para interesados en tecnología, producto y servicios digitales. Una newsletter para comprender la economía digital que nos rodea. Una newsletter donde lanzo mis reflexiones y aprendizajes personales.</p>
              </div>
            </div>
        </div> 

    </div>
    <div class="home_page_right">
        <h1 class="text-center">Últimos informes</h1>
        <div class="divider"></div>
        <div class="feed_boxes">
            <ul>
            
            {% comment %}
            Publish post on timeline 48 hours after newsletter has been sent. Delay in seconds.
            Javascript does the magic removing dynamically posts that do not meet publish date criteria.
            {% endcomment %}
            {% assign delay = 48 | times: 60 | times: 60 %}

              {% for post in site.posts %}
                {% if post.visible_on_index != false %}
                    {% assign publish_date = post.date | date: '%s' %}
                    {% assign publish_date = publish_date | plus: delay %}
                    <div publish-date="{{ publish_date | date: '%Y-%m-%d' }}">
                    <a href="{{ post.url }}">
                    <li class="feedbox">
                        <div class="feedbox_img"><img src="{{ post.post_pic }}"/></div>
                        <div class="feedbox_text">
                            <div class="feedbox_text_tittle">
                                
                                {% if post.popular %}
                                    <span class="badge badge-success align-center">Popular</span>
                                {% endif %}
                                
                                {{ post.title }}
                            </div>

                            <div class="feedbox_text_summary">{{ post.summary }}</div>
                            <time class="feedbox_text_time">
                                {%- assign date_format = "%b %-d, %Y" -%}
                                {%- assign words = post.content | strip_html | number_of_words -%}
                                {%- assign min_read= words | divided_by: 180 | plus: 0 -%}
                                {{ post.date | date: date_format }} - {{ min_read }} min lectura
                            </time>
                        </div>
                    </li>
                    </a>
                    </div>
                {% endif %}
              {% endfor %}
            </ul>
        </div>
    </div>
</div>

{% include post_visibility.html %}
