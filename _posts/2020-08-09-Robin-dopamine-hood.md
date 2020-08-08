---
layout: post
title: "Robin-dopamine-hood"
author: Pablo Lanaspa
profile_pic: /assets/img/bio_img.png
post_pic: /assets/img/posts/20200809/pfof.png
date: 2020-08-09 10:00:10 -0000
categories: []
tags: [robinhood, business-model, plataformas, trading, bolsa, etica]
summary: "Robinhood ha sido una historia de éxito pero... ¿Alguien ha pensado en la ética detrás de la app?"
---


Año 2011, el movimiento *#occupywallstreet* ponía en el punto de mira a *Wall Street*. El pueblo estadounidense se cansó de ver como las soluciones propuestas a la gran crisis financiera de 2008 por las diferentes administraciones de los EEUU solo habían repercutido en los tenedores de activos financieros en Wall Street y no habían permeado tan apenas en las cuentas corrientes del resto de la sociedad (por cierto, algo muy parecido a lo que está ocurriendo hoy en día con los tan solicitados planes de estimulo del BCE y de la FED tras las crisis del COVID19 y que son fiel reflejo de los programas de *quantitative easing* de aquella época). Al grano.

Dos estudiantes de Stanford deciden crear [Robinhood](https://robinhood.com/us/en/){:target="_blank"} inspirados en el movimiento *#occupywallstreet*, una plataforma para democratizar el acceso a los mercados financieros para que todos los ciudadanos tuvieran un acceso fácil y gratuito a las herramientas financieras que habían permitido a la élite del momento beneficiarse de los estímulos económicos que lanzó la Reserva Federal.

Desde entonces la historia de Robinhood es una de las grandes historias de éxito en Silicon Valley que les ha permitido llegar recientemente a una valoración de 8,3 billones de dólares. Robinhood es un éxito de masas que ha permitido poder operar en bolsa a todos los ciudadanos americanos de manera totalmente gratuita y sencilla a través de su app. Pero cuidado, lo ha conseguido a través de dos elementos clave que merece la pena revisar: Su **modelo de negocio** y su apuesta por la **dopamina**.


## El modelo de negocio

Si vamos a la web oficial de Robinhood, la propia empresa [nos explica](https://robinhood.com/us/en/support/articles/how-robinhood-makes-money/){:target="_blank"} de donde saca beneficio para poder ofertar operaciones ilimitadas en mercados financieros totalmente gratuitas, algo por lo que en cualquier entidad financiera debemos pagar de una u otra forma:
- Robinhood Gold, un conjunto herramientas de inversión por $5 al mes (suscripción por software avanzado de ayuda)
- *Rebates* de los operadores de mercado
- Ingresos generados por el efectivo depositado en sus cuentas (como cualquier otro banco)
- Ingresos por préstamos (como cualquier otro banco)
- Comisiones por usos de tarjetas y manejo de efectivo (como cualquier otro banco)

Nada fuera de lo normal, las típicas estructuras aburridas de generación de ingresos bancarios, excepto por una cosa, una pata que le da actualmente cerca del [50% de sus ingresos](https://www.investopedia.com/articles/active-trading/020515/how-robinhood-makes-money.asp){:target="_blank"}: Los **rebates**.

### PFOF qué? 

Lo que Robinhood denomina en su página web como *rebates*, en el mundo financiero, según el instituto CFA, uno de los institutos certificadores en conocimientos financieros más prestigioso del mundo, tiene otro nombre oficial más pomposo: [PFOF (Payment for order flow)](https://www.cfainstitute.org/-/media/documents/issue-brief/payment-for-order-flow.ashx){:target="_blank"}. Merece la pena entender lo que es en 1 minuto. 

Robinhood no ejecuta la compra-venta de activos financieros para sus clientes directamente si no que se lo vende a un mayorista para que ejecute estas operaciones por ellos. De esta manera Robinhood recibe una compensación económica a cambio de vender las órdenes de sus clientes. Así, no solo puede ofrecer el servicio gratis a sus clientes si no que gana beneficios por cada operación que alguien realiza en su plataforma. Pero, ¿por qué un mayorista paga por comprar las órdenes de otro banco que ha de ejecutar?

Existe algo denominado **bid-ask spread**, la diferencia entre el precio de compra y el precio de venta de un activo financiero. Si habéis tenido que cambiar divisa alguna vez en el aeropuerto os habréis dado cuenta que no es el mismo precio el precio de compra de una divisa a otra que el de venta, eso es el *spread*. 

Resumiendo toda la complejidad los mayoristas compran esos paquetes de órdenes porque las van a ejecutar con un *spread* que les salga a cuenta. Lo que más les sale a cuenta son las denominadas *call-options*, unos instrumentos financieros más complejos que permiten comprar en el futuro un activo a un precio determinado de antemano. 

Normalmente, los mayoristas trabajan solamente con grandes fondos de inversión que mueven bloques de dinero muy grandes, los cuales negocian hasta el último dígito después de la coma de cualquier precio porque con grandes volúmenes de dinero un dígito después de la coma significa mucho mucho dinero.

Sin embargo, los usuarios de Robinhood que no son expertos en este tema y que mueven volúmenes pequeños no tienen esta capacidad de negociación, por lo que compran al precio de cambio de divisa en el aeropuerto (lugar donde cambiar divisa es más caro por lo general) y no al mejor precio del mercado.

¿Es ético que tu broker no te garantice el mejor precio de compra a cambio de no cobrarte nada por operar? Probablemente la respuesta gire entorno a cómo de informados están sus clientes de esta práctica. En Europa, ésta práctica tendría sus filtros legales más complejos.

Lo que está claro es que cuando el producto es gratis, el producto eres tú.


### Vender volumen 

En definitiva, Robinhood busca crear un mercado, que haya movimiento, cuanto más mejor. ¿Son los únicos que hacen esto en EEUU? No, las grandes corporaciones financieras lo llevan haciendo hace tiempo, pero ojo a los datos.

{% include posts/images/image_center.html url="/assets/img/posts/20200809/pfof.png" description="Comparativa sobre cuanto ganan los diferentes brokers por las PFOFs" ref="https://www.nytimes.com/2020/07/08/technology/robinhood-risky-trading.html" %}

Robinhood estaría consiguiendo 15 veces más de dinero que Charles Schwab a través de los PFOFs por cada dolar de operación vendido. Indicador de que o bien el gran player del mercado, Charles Schwab, no tiene ni idea de como monetizar esta herramienta financiera o que Robinhood es mucho más rentable para los mayoristas por lo mal gestionados que están las órdenes para sus usuarios.


## Una máquina de dopamina

Por otro lado, el segundo elemento del éxito de Robinhood, algo que Silicon Valley ha sabido hacer muy bien durante la última década: generar *engagement*.

Robinhood posee un entramado de incentivos psicológicos, *push-notifications* y gamificación que hace que cada movimiento dentro de la app sea una generación de dopamina absoluta que genera atracción por realizar cuantos más movimientos mejor. Algo denominado: *High-frecuency trading*. Esto lo hace muy diferente del resto de *brokers* del mercado que no hace de la inversión nada divertido.

{% include posts/images/image_left_nourl.html url="/assets/img/posts/20200809/robinhood-call-options.png" description="Página oficial de Robinhood invitando a los usuarios a operar de manera ''divertida''"  %}

Esto no tendría nada de malo si no generase incentivos a que personas inexpertas jueguen con activos financieros complejos, sobretodo *call-options*, apostando sus ahorros como si los mercados financieros fuesen un casino y no una herramienta de adquisición de negocios bajo un proceso de análisis bien pensado, reflexivo y sosegado. Cada uno es responsable de sus propias decisiones, pero existe una dimensión ética que Robinhood debería evaluar.

Cuantos más usuarios tenga Robinhood operando con *call-options* y más veces operen con ellas, mayor es el beneficio de Robinhood como ya hemos visto. No hace falta ser un visionario para entender donde está situando los incentivos Robinhood dentro de su plataforma.

En los primeros tres meses de 2020, los usuarios de Robinhood negociaron nueve veces más acciones que los clientes de E-Trade y 40 veces más que los clientes de Charles Schwab, indicador claro de cómo Robinhood empuja a sus usuarios hacia el *High-frecuency trading*. Además, los usuarios de Robinhood compraron y vendieron 88 veces más *call-options* que los clientes de Schwab según el estudio del [New York Times](https://www.nytimes.com/2020/07/08/technology/robinhood-risky-trading.html){:target="_blank"} .

{% include posts/images/image_center.html url="/assets/img/posts/20200809/hihg-frequency-trading.png" description="Call-options negociadas por usuario entre los diferentes brokers" ref="https://www.nytimes.com/2020/07/08/technology/robinhood-risky-trading.html" %}

La app está pensada para generar cuantas más transacciones mejor, convirtiendo la bolsa en una especie de casino para sus usuarios aprendiendo de las mejores técnicas de *engagement* de Silicon Valley. El final de todo esto para la mayoría de sus usuarios inexpertos está claro. **Cuando las inversiones las tratas como un casino, siempre gana la banca.**


## Ninetynine

Robinhood no ha llegado a Europa por la diferencia legislativa que existe en la UE. Sin embargo, en España ha nacido una startup llamada [Ninetynine](https://www.ninetynine.com){:target="_blank"} inspirada en Robinhood que ya ha levantado varios millones de euros. 

Aún no conocemos los detalles de cómo conseguirá establecer un modelo de negocio rentable para la startup y a la vez poder ofrecer acceso a los mercados financieros globales de manera totalmente gratuita tal y como lo hace Robinhood. De momento su modelo parece ser algo diferente porque sí habla de cobrar ciertas comisiones, veremos qué pasos sigue.

Robinhood ha traído grandes mejoras para sus usuarios democratizando el acceso a los mercados financieros y a herramientas financieras complejas. 

Sin embargo, existen unas cuestiones éticas sobre las que a mi juicio deberían reflexionar... Zuckerberg tampoco pensó en las consecuencias de los cambios de comportamientos sociales experimentados en la última década a raíz del (mal)uso de Facebook e Instagram. Aprendamos del pasado.
