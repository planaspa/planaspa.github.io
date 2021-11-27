---
layout: post
title: "Blockchain hasta para cenar"
author: Pablo Lanaspa
profile_pic: /assets/img/bio_img.png
post_pic: /assets/img/posts/20211128/blocks.png
date: 2021-11-28 10:10:10 -0000
categories: []
tags: [blockchain, Bitcoin, data]
summary: "Blockchain es la tecnología perfecta para un subconjunto muy específico de casos de uso."
---

Hacía mucho tiempo ya que me llevaba rondando por la cabeza dedicar un informe a la tecnología blockchain. Y justamente esta semana he acabado de leerme el libro "El patrón Bitcoin", así que ya no he tenido excusa.

Un libro por cierto muy recomendado para entender como más allá de la burbuja especulativa existente alrededor de la criptomoneda, Bitcoin es un proyecto que trata de derrocar el poder brutal que ejercen los gobiernos sobre los ciudadanos de a pie vía la política monetaria expansiva de los bancos centrales.

Pero no vengo a hablar del libro en este informe, si no de la tecnología subyacente, blockchain. A mi juicio, palabra que desde hace mucho tiempo ha tenido un *hype* increíble y se ha entendido muy mal allá por donde me he movido.

## Características

Una blockchain recrea un libro mayor de contabilidad en el que varios contables pueden participar en paralelo. Así de simple.

Un libro de contabilidad inmutable, capaz de registrar las operaciones de manera ordenada y capaz de evitar que nadie cambie el registro contable o intente imponer por la fuerza cambios en las reglas del juego.

Es una estructura de datos muy **especializada** en un caso de uso muy concreto, lo que implica que trae muchos beneficios para ese caso de uso en concreto pero es muy poco versatil y útil para otros.

La pricipal característica diferencial de una blockchain frente a cualquier otro sistema de almacenamiento tradicional es **evitar abusos de poder** de cualquiera de los participantes contables que quieran monopolizar el sistema.

Evitar abusos de poder solo se puede conseguir vía descentralización de las decisiones, y esto solo se puede conseguir evitando que un único participante centralice gran parte del poder para registrar transacciones. 

Para ello, la única solución que se conoce hasta la fecha es hacer competir a todo el mundo en igualdad de condiciones en todo momento para poder registrar sus cuentas, eliminando cualquier atisbo de ventaja entre los contables.

En esta vida todo tiene un coste y garantizar que nadie en el sistema tenga mayor poder que el resto sale caro.

### No es barato

La tecnología blockchain es una tecnología muy **ineficiente** a la hora de gestionar recursos. 

Para almacenar un único registro contable tienes que poner a competir a miles de nodos entre si para que solo uno de ellos gane y almacene el registro en el libro de contabilidad. 

Una vez almacenado debe de propagarse por toda la red contable.

La blockchain **no es rápida**. Almacenar una transacción lleva muchísimo tiempo en comparación con almacenarla en cualquier otro sistema de información centralizado donde una única organización lleve la contabilidad.

Es un coste muy alto que se paga por proveer de la capacidad de no tener que confiar en nadie de la red.

Si comparamos una operación en una blockchain con el proceso de almacenaje de una transacción centralizada no hay color en términos de eficiencia en la gestión de recursos y en la rapidez de procesamiento. Son órdenes de magnitud de diferencia.


## ¿Necesito una?

En muchas ocasiones he visto lanzar start-ups o proyectos internos en grandes empresas con tecnología blockchain donde realmente no existe ninguna necesidad real de utilizarla. 

Y es más, utilizarla complica todo el desarrollo del producto y su mantenimiento.

Para responder ante la cuestión de si en tu caso de uso necesitas implementar una blockchain, he agrupado las siguientes directrices que podrían ayudarte a darte una pista al respecto:
* Si el *core* de tu producto no se basa en almacenar datos, **no necesitas una blockchain**.
* Si el *core* de tu producto no se basa en que exista una base de datos comunes a organismos independientes, **no necesitas una blockchain**.
* Si el producto necesita o tiene que poder tener la posibilidad de modificar información una vez almacenada, **no necesitas una blockchain**.
* Si el producto no necesita que todos y cada uno de los datos almacenados queden almacenados para siempre, no necesitas de una blockchain.
* Si tu producto no necesita de muchos organismos independientes almacenando transacciones en paralelo, **no necesitas una blockchain**.
* Si no existen conflictos de interes entre los participantes de la base de datos, **no necesitas una blockchain**.
* Si los organismos independientes que participan en la red confían los unos en los otros, **no necesitas una blockchain**.
* Si el problema que intentas resolver no se basa en eliminar el poder que un monopolio u oligopolio pueda ejercer sobre el resto, **no necesitas una blockchain**.
* Si las transacciones que almacenas no dependen las unas de las otras, **no necesitas una blockchain**.
* Si una vez creada las normas y lógica del producto van a ser cuasi-inmutables y van sufrir ningún o casi ningún cambio para siempre, **no necesitas una blockchain**.


Con este informe no quiero posicionarme en contra de la tecnología, pero si que quiero ofrecer un baño de realidad sobre una tecnología que tan apenas parece entenderse.

Blockchain puede ser la tecnología perfecta para un subconjunto muy específico de casos de uso, pero no lo es para inmensa mayoría. 