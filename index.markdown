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
              <img class="card-img-top mx-auto my-auto" src="{{ page.post_pic }}" alt="Card image cap" style="border-radius: 50%; max-height: 100px; max-width: 100px; height: auto; width:auto; ">
              <div class="card-body">
                <h5 class="card-title" style="margin-top: 0">Pablo Lanaspa Ferrer</h5>
                <h6 class="card-subtitle mb-2 text-muted">Digital Product Manager</h6>
                <p class="card-text text-muted" style="font-size: small">Creando plataformas cognitivas en Telefónica<br/>Ing. Informático por la Univ. de Zaragoza<br/>Amante de la economía, negocios y deporte</p>
                <div class="cv_box_bio_social">
                    <a href="https://twitter.com/planaspa"><button type="button" class="btn btn-primary btn-sm"><i class="fab fa-twitter"></i> <b>Sígueme</b></button></a>
                    <a href="https://linkedin.com/in/planaspa"><button type="button" class="btn btn-info btn-sm"><i class="fab fa-linkedin"></i> <b>Conecta</b></button></a>
                    <a href="mailto:info@planaspa.com"><button type="button" class="btn btn-secondary btn-sm"><i class="fas fa-envelope"></i> <b>Mail</b></button></a>
                </div>
              </div>
            </div>
        </div> 
        <div class="subscribe_box">
        <div class="divider"></div>

            <!-- Begin Mailchimp Signup Form -->
            <link href="//cdn-images.mailchimp.com/embedcode/slim-10_7.css" rel="stylesheet" type="text/css">
            <style type="text/css">
                #mc_embed_signup{background:#fff; clear:left; font:14px }
                /* Add your own Mailchimp form style overrides in your site stylesheet or in this style block.
                   We recommend moving this block and the preceding CSS link to the HEAD of your HTML file. */
            </style>
            <style type="text/css">
                #mc-embedded-subscribe-form input[type=checkbox]{display: inline; width: auto;margin-right: 10px;}
                #mergeRow-gdpr {margin-top: 20px;}
                #mergeRow-gdpr fieldset label {font-weight: normal;}
                #mc-embedded-subscribe-form .mc_fieldset{border:none;min-height: 0px;padding-bottom:0px;}
            </style>
            <div id="mc_embed_signup">
            <form action="https://gmail.us19.list-manage.com/subscribe/post?u=a375448b51d9009be2a4c9edf&amp;id=44834df6d1" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                <div class="email_container">
                    <label for="mce-EMAIL" style="margin-bottom: 5px">Únete a #InformeLanaspa!</label>
                    <div class="email_container">
                        <div class="email_container_left">
                            <div id="mc_embed_signup_scroll">
                                <input type="email" style="width:100%" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email" required>
                            </div>
                        </div>
                        <div class="email_container_right">
                            <div class="clear"><input type="submit" value="¡Añádeme!" name="subscribe" id="mc-embedded-subscribe" class="button" style="background-color:#029E74"></div>
                        </div>
                    </div>
                </div>
                <div id="mergeRow-gdpr" class="mergeRow gdpr-mergeRow content__gdprBlock mc-field-group" style="margin-top:0">
                <div class="content__gdpr fa-xs">
                    <p>Dándole al botón de añadirse me darás permiso para enviarte mis informes directamente a tu bandeja de entrada. Echa un vistazo en <a href="{{ site.baseurl }}/subscribe" target="_blank">esta sección</a>  cómo trataré tu información personal.</p> 
                </div>
                </div>
                <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_a375448b51d9009be2a4c9edf_44834df6d1" tabindex="-1" value=""></div>
            </form>
            </div>

            <!--End mc_embed_signup-->

        </div>
    </div>
    <div class="home_page_right">
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
