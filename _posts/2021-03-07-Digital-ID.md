---
layout: post
title: "Identidad digital"
author: Pablo Lanaspa
profile_pic: /assets/img/bio_img.png
post_pic: /assets/img/posts/20210307/ID.png
date: 2021-03-07 10:10:10 -0000
categories: []
tags: [web3, futuro]
summary: "Necesitamos una identificación digital común y descentralizada."
---

Esta semana, como cada año, tuvo lugar Ignite, la conferencia anual de Microsoft en la que presenta sus nuevos productos al mercado. Una de las sorpresas de este año ha sido el lanzamiento de Azure Active Directory verifiable credentials ([AAD VCs](https://www.microsoft.com/security/blog/?p=92888)).

A grandes rasgos, AAD VCs es un sistema de gestión de la identidad descentralizada, al más puro estilo [web3](https://planaspa.com/2021/01/24/Web3.html) como ya hablamos aquí en informes anteriores.

La gestión descentralizada de la identidad y el problema actual de la identidad en el entorno digital es una cuestión a la que llevaba queriendo dedicar un Informe desde hacía ya un tiempo y el anuncio de Microsoft me lo ha dejado en bandeja.

## El sinsentido

Nos hemos acostumbrado a un mundo digital en el que en cada sitio al que queremos acceder tenemos que crearnos un usuario y una contraseña diferente.

Esto es como si para cada tienda o bar al que fuésemos tuviesemos que crearnos un carné de acceso que siempre tenemos que llevar encima si queremos poder entrar. Un sinsentido.

Además, el uso generalizado de direcciones de correo electrónico o nombres de usuario como identificadores principales ha dado lugar a **malas prácticas en general**. Los usuarios hemos desarrollado el hábito de utilizar el mismo nombre de usuario y contraseña en la mayoría de servicios servicios y aplicaciones digitales.

Esto da como resultado una seguridad deficiente. Es decir, a parte de ser una **experiencia de usuario horrible** el tener que acordarse de todas las combinaciones de usuario y contraseña que creamos en el pasado, la seguridad queda en entredicho también. 

En el mundo físico existen estándares de identificación tanto nacionales como supranacionales, DNI o pasaporte respectivamente son un ejemplo. Unos documentos de identificación personal que son válidos ante cualquier entidad física. Además, estos identificadores están en nuestra posesión y no se alojan en carteras de terceros. Los llevamos en nuestro bolso o bolsillo.

Sin embargo, no existe un equivalente digital de identificación personal independiente al sitio web o servicio al que queramos acceder. Lo más cercano son direcciones de email o números de teléfono, pero son elementos sustitutivos ante la falta de un servicio creado ex profeso para solucionar esta problemática.

Tener que crear una cuenta diferente en cada sitio web no tiene sentido, tener que gestionar N-mil contraseñas tampoco. Y además lleva a prácticas poco seguras de los usuarios.


## Identidad digital

No existe un protocolo estándar que permita identificarnos de manera global. La identificación del usuario en silos tecnológicos ha llevado a que los documentos o certificaciones expedidos por cada servicio no sean transportables ni fácilmente compartidos entre cada uno de los servicios.

No existe ninguna herramienta que de manera sencilla permita validar que mis pertenencias digitales o las certificaciones digitales han sido realmente conseguidas por mi, principalmente porque no existe un concepto de identificación digital común.

**Necesitamos un pasaporte digital**. Un sistema de identificación único que nos elimine toda esta complejidad, que poseamos nosotros y que nos permita interoperar entre diferentes servicios que requieran de verificar la existencia de documentos expedidos por otros servicios.

Algo tan simple como alquilar un coche debería ser automático de manera digital. Tengo mi identificación única a la que tengo asociada un carné de conducir en vigor a la que, tras darle permiso, la empresa de alquileres se puede conectar y verificar mi identidad y la posesión del carné de conducir necesario.

Sin creación de cuentas, sin creación de nuevas identidades digitales, sin barreras digitales de verificación de mis certificaciones o legítimas posesiones.

{% include posts/block_text.html text='Necesitamos wallets digitales que estén ligados a cada persona pero que no estén ligados a ningún servicio web en particular. Este wallet digital tiene que permitir que cualquier servicio o app digital pueda verificar quien es el individuo y que credenciales posee. ¿Tiene carnet de conducir? ¿Tiene una tarjeta de descuento/fidelización en este negocio? ¿Realmente estudió en esta universidad?' %}

Solo así podremos avanzar hacia un mundo digital mucho más seguro y con muchas menos fricciones de cara al usuario.


## Descentralización

Las soluciones tecnológicas de descentralización hasta la fecha implicaban la necesidad de que toda la información permaneciese pública en algún nodo de la red para que estos escenarios fuesen posibles. Sin embargo, Microsoft prefiere trabajar en una dirección que permita una privacidad mayor de la información.

Microsoft cree que los sistemas de descentralización deben servir estrictamente para almacenar identificadores y metadatos que indiquen que cierto dato ha sido verificado pero que los documentos de identidad reales de un usuario residan encriptados fuera de las cadenas públicas, bajo el control exclusivo del usuario.

De alguna manera, esto significa que el título universitario o carné de conducir esté guardado en tu alojamiento privado o el de la universidad y que nadie más lo posea. De esta manera lo que las redes descentralizadas deben almacenar es solo un código de verificación de tu universidad o de tráfico que valide que tu estás en posesión de dicho documento.

Esto es lo que ha presentado y este ha sido el lanzamiento de Azure Active Directory verifiable credentials. No se si será la tecnología definitiva ni si funcionará también como prometen. Sin embargo, el hecho de que grandes *players* como Microsoft quieran jugar la partida de la descentralización quiere decir que es un problema lo suficientemente grande como para atraer su atención.

La búsqueda de un estándar común es clave, y este estándar ha de ser abierto y cuidado por la comunidad, no por un ente único. Además, estas soluciones de descentralización han de buscar, en mi opinión, la mayor privacidad posible para el usuario.

Las contraseñas tienen que quedar en el pasado, la identidad digital debe ser única y debemos de poder ser capaces de trabajar entre diferentes servicios sin que tengamos problemas de identificación, verificación de la identidad o legitimidad sobre documentos.

La web3 se aproxima.