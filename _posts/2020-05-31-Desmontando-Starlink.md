---
layout: post
title: "Desmontando Starlink"
author: Pablo Lanaspa
profile_pic: /assets/img/bio_img.png
post_pic: /assets/img/posts/20200531/LEOvsGEO.png
date: 2020-05-31 09:10:10 -0000
categories: []
tags: [elon, musk, tesla, spacex, business-model, innovacion, espacio]
summary: "¿Puede ser SpaceX un peligro para las empresas de telecomunicaciones?"
---

Tras postponer el lanzamiento por problemas meteorológicos tres días antes, ayer por la noche SpaceX fue capaz de poner en órbita a seres humanos en la estación espacial internacional.

Ya hemos hablado de la preciosa [historia]({% post_url 2020-03-01-La-democratizacion-del-acceso-al-espacio %}) de SpaceX en artículos anteriores y ayer consiguió ir un paso más allá, incluir en sus lanzamientos a seres humanos. 

Sin embargo, hoy no quiero hablar de la importancia de este hecho y de las consecuencias que puede desencadenar en la industria. Hoy quiero hablar de un, de momento, pequeño proyecto que va germinando al calor de SpaceX y que no aparece en tantas portadas en todo el mundo: Starlink. Un proyecto que puede revolucionar el sector de las telecomunicaciones.

## Qué es Starlink

Recuerdo cuando, después de haber estado trabajando durante unos meses para la Agencia Espacial Europea, asistí a la [SpaceOps de 2016](http://www.spaceops.org/about-space-ops/) por la publicación de un artículo que hicimos con el gran Dr. [Jonathan McAuliffe](https://twitter.com/drjmcauliffe) y a la que no podría haber conseguido asistir sin la invitación de Mauro Casale. En esa conferencia fue donde por primera vez empecé a comprender lo que era una **constelación de satélites**, la potencia enorme que tenían y cómo ya había empresas no íntimamente relacionadas con el sector aeroespacial como Google que empezaban a sonar como posibles candidatas a pugnar por ser las primeras en construir la siguiente gran constelación.

Una constelación de satélites es básicamente un conjunto de satélites artificiales que orbitan alrededor de un cuerpo y que cumplen una tarea de manera conjunta. Starlink es el proyecto de SpaceX para poder crear una constelación de satélites alrededor de la tierra con el objetivo de ofrecer conexión a internet de bajo coste a todo el planeta. 

{% include posts/images/image_left.html url="/assets/img/posts/20200531/constellation.jpeg" description="Constelación de Starlink" ref="https://www.newsbreak.com/news/0NmzLfzD/what-is-starlink-elon-musk-is-building-a-satellite-constellation" %}

Es decir, construir miles de satélites que lancen al espacio ([ventaja competitiva]({% post_url 2020-03-01-La-democratizacion-del-acceso-al-espacio %}) muy importante siendo SpaceX la empresa que ofrece estos servicios al coste más bajo de la industria) y que se conecten entre si creando una gran red de telecomunicaciones en el espacio. 

Todo esto con el objetivo de poder cubrir cada centímetro de nuestro planeta y ofrecer la capacidad de conectarse a internet a través de su tecnología.

## La magia detrás de Starlink

Pero seamos honestos con la historia, la idea de crear constelaciones de satélites para diferentes propósitos es una idea bastante asentada en la industria aeroespacial y la idea de poder conectarse a internet via satélite es una tecnología ya existente bastante vieja también. Sin embargo, ni la conexión a internet via satélite ha sido un éxito de masas ni se han creado grandes constelaciones de miles de satélites. 

De hecho, actualmente solo existen unos [2500 satélites](https://www.ucsusa.org/resources/satellite-database) orbitando alrededor de nuestro planeta que se encuentren operativos. Entonces... ¿Por qué quiere SpaceX juntar ambos mundos? Y ¿por qué quiere SpaceX tener la mayor constelación de satélites del mundo multiplicando por 6 el número actual de satélites orbitando alrededor de la tierra?

### La mitad de la población no está conectada

Alrededor de la mitad de la población mundial todavía no tiene acceso a internet. Puede sonar increíble, pero es así. De hecho, existen muchos proyectos a nivel mundial con el objetivo de conectar a los aún no conectados. 

Es muy posible que te suenen proyectos de Google como [Loon](https://loon.com) que buscan conectar a la población de maneras innovadoras, pero no hace falta irse tan lejos, desde la misma Telefónica existen proyectos como [Internet para todos](https://www.telefonica.com/es/web/sala-de-prensa/-/telefonica-presenta-internet-para-todos-un-proyecto-colaborativo-para-conectar-a-los-no-conectados-en-latinoamerica) que buscan precisamente conectar a todas aquellas personas que aún no disponen de acceso a internet, y es que conectar a la mitad de la población mundial es un reto muy grande.

Conectar las zonas más remotas del planeta a menudo no es rentable en base a las técnicas y tecnologías que se utilizan hoy en día para que llegue fibra óptica a nuestro hogar. Por esta razón, si se quiere conectar a la mitad de la población mundial se necesitan soluciones innovadoras, y SpaceX parece que lo tiene claro, para ellos la mejor manera de llegar a todo el planeta es utilizando el espacio exterior.

### Redes LEO

Si bien el internet via satélite ha existido durante décadas, generalmente ha adolecido de altas latencias, conexiones poco confiables y áreas de servicio irregulares, por lo que no era un servicio muy *sexy* para el usuario común de internet. Sin embargo, si SpaceX quiere conseguir ofrecer banda ancha *low-cost* a todo el planeta via satélites, esto implica inequívocamente que necesitan desplegar sus satélites en una órbita baja, las denominadas LEO (Low-Earth Orbit)... ¿Por qué? 

Básicamente, la única manera de conseguir baja latencia, y por lo tanto dar una calidad de servicio mínima requerida hoy en día por cualquier usuario medio, es tener el satélite lo más cerca del suelo posible para que haya menos distancia entre el dispositivo y el satélite. Además, sin entrar en temas más técnicos, el estar más cerca del suelo implica cubrir una superficie terrestre menor y por lo tanto también tener que dar respuesta a menos usuarios, lo que permite repartir el internet ofrecido entre menos usuarios y por lo tanto ofrecerlo de mejor calidad.

{% include posts/images/image_center.html url="/assets/img/posts/20200531/LEOvsGEO.png" description="Perspectiva de la cercanía de una órbita leo vs una geo que utilizan los sistemas de GPS" ref="https://www.researchgate.net/figure/Illustration-of-satellite-angular-ranges-in-LEO-MEO-and-GEO-IGSO_fig2_327062553" %}

No obstante, poder ofrecer este servicio satelital de órbita baja implica tener que poner en órbita miles y miles de satélites para que siempre haya al menos un satélite cubriendo una zona del planeta. Por esta razón los servicios satelitales hasta la fecha ofrecían servicios a órbitas más altas y por lo tanto con una calidad de servicio peor. Construir y lanzar un satélite no era barato.

Este es el proyecto de Starlink. Poner en órbita una constelación de 12.000 satélites según el [documento](https://www.digitaltrends.com/cool-tech/space-elon-musk-fcc-approval/) que SpaceX envió a la FCC para pedir la aprobación del proyecto.

## Mi conjetura personal

¿Por qué una empresa especializada en misiones especiales se mete en el fregado de llevar conexión de internet a la mitad de la población que aún no tiene acceso? El objetivo de conectar a la población no conectada es un objetivo loable y bonito, sin embargo, yo creo que existen otras derivadas del proyecto.

## El monopolio de la baja latencia

Por un lado, el medio por el que se transmite la señal es una ventaja tecnológica bastante interesante todavía no explotada en redes satelitales frente a redes terrestres. La luz se transmite casi al doble de velocidad por el vacío, es decir por el espacio exterior, que a través del vidrio, es decir, la fibra óptica. Para los curiosos del funcionamiento técnico de toda esta red de comunicaciones espaciales dejo un [paper](http://nrg.cs.ucl.ac.uk/mjh/starlink-draft.pdf) que encuentro muy bien explicado al respecto escrito por Mark Handley de la UCL.

De esta manera, Starlink se nos vende como la solución para que países subdesarrollados se conecten a internet, pero tener el monopolio de una tecnología de mínima latencia global permite usos más lucrativos. Saber qué industrias estarían interesadas en conseguir mínimas latencias para enviar información más rápido de un punto a otro del planeta es complicado a priori. Existen industrias sensibles a la latencia de la transmisión de la información en las que cada milisegundo de latencia implica cantidades ingentes de dinero. El mundo del *trading* (HFT) es un claro ejemplo y para prueba de ello tenemos el precio que se pagó por el cable submarino que permite conectar Nueva York con Londres con la menor latencia del mundo, el Hibernia Express.

## El coche conectado

Por otro lado, nos hemos centrado mucho en la red de satélites de Starlink, sin embargo, Starlink también trabaja en construir un receptor compatible con esta red de satélites que va a ser el más pequeño y barato del mercado, capaz de colocarse en los techos de las casas o en los techos de los vehículos y ofrecer velocidades simétricas de subida y de bajada de hasta 100Mb según se especula... Parece una tontería, pero tener un receptor de conexión satélite de banda ancha de este calibre y del tamaño de una [pizza](https://www.inverse.com/innovation/spacex-starlink-heres-how-much-it-will-cost-to-subscribe) es algo que aún no se ha conseguido en la industria.

Seguro que al leer que es posible poner estos receptores en los techos de los vehículos y si ya has leído el anterior artículo sobre [Tesla]({% post_url 2020-02-09-Entendiendo-Tesla %}) sobra explicar como Starlink puede verse como un servicio esencial para un coche conectado que ofrezca conducción autónoma y que por supuesto necesita tomar decisiones en milisegundos. Todas las piezas de Elon Musk acaban jugando un rol más importante en una partida más grande. 