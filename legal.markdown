---
layout: page
title: "Aviso legal"
permalink: /legal
post_pic: /assets/img/bio_img.png
summary: "Sitio web personal de Pablo Lanaspa. Publico opiniones personales acerca de la economía digital."
---
<div class="legal_page">
    <h1>Aviso legal</h1>

<p>La presente página se constituye como el Aviso Legal y las Condiciones de Uso que regulan el acceso, navegación y uso de mi sitio web personal ubicada en www.planaspa.com. Para comunicarse conmigo, se debe de escribir un correo electrónico a la siguiente dirección: <a href="mailto:info@planaspa.com">info@planaspa.com </a>.</p>

<h3> Cookies </h3>
<p> Las cookies son pequeños paquetes de información que se almacenan en tu navegador cuando visitas cualquier sitio web. Existen cookies de dos categorías: De origen y de terceros. 
<p/><p>
Las cookies de origen son las cookies que generaro yo a través de mi propio sitio web, en mi caso genero una cookie esencial para el desempeño de mi sitio web para saber si has dado consentimientos para poder utilizar tus datos para analizar el tráfico en mi sitio web. 
<p/><p>
Por otro lado, las cookies de terceros son creadas por responsables del tratamiento de datos que no operan este sitio web, es decir, empresas terceras ajenas a mi de las cuales utilizo sus servicios. En mi caso utilizo las siguientes cookies de terceros y con el siguiente propósito:</p>
<ul>
  <li>Google Analytics (cookie de terceros): Análisis de perfiles de visitantes, medición de datos de tráfico del sitio web y comportamiento sobre el mismo. Esta cookie suele durar de media 24 meses.</li>
</ul>
</p>  

<p>
    Para eliminar las cookies que ya hayas aceptado y/o volver a configurar tus permisos haz click <a id="remove-cookie" href="{{ site.baseurl }}/">aquí</a>.
</p>

<h3> Servicios ofrecidos </h3>
<p>Uno de los servicios prestados por esta página web es la adhesion a una lista de emails cuya promesa de privacidad puede verse directamente en la <a href="{{ site.baseurl }}/subscribe">página de subscripción</a>. Dicha suscripción se realiza de manera totalmente gratuita y no produce ningun coste a los suscriptores.</p>

<!-- Remove cookies -->
<script>
    function delete_cookie(name) {
        document.cookie = name +'=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
    }
    
    document.getElementById('remove-cookie').addEventListener("click",function() {
        delete_cookie('accepted-cookie');
    });
</script>