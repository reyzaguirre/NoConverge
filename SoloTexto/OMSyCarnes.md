---
title: "La OMS, las carnes procesadas y el cáncer"
author: "Raul Eyzaguirre"
date: "28/10/2015"
output: html_document
---

El tema de los últimos días ha sido la [decisión de la OMS de clasificar a las carnes procesadas como carcinógenas](http://www.who.int/mediacentre/news/releases/2015/cancer-red-meat/es/) para los humanos, colocándolas en el llamado grupo 1 donde también está por ejemplo el tabaco. ¿Cuál es el problema con esto? ¿Hay algún error? No, no hay ningún error, pero sí, hay un problema, y no es un problema que tenga que ver ni con las carnes ni con el cáncer, sino con la forma en la que nuestra sociedad usa y consume la estadística.

Empecemos por entender qué significa entrar al grupo 1. La siguiente figura tomada de [Cancer Research UK](http://scienceblog.cancerresearchuk.org/2015/10/26/processed-meat-and-cancer-what-you-need-to-know/), lo pone claro.

![Meat and cancer picture][oms1]

El grupo 1 es aquel en donde están todos los productos que se sabe causan cáncer. En términos más estadísticos estos son los productos que se sabe, más allá de toda duda, que constituyen un factor de riesgo.

Hagamos acá un pequeño paréntesis para definir cómo se mide el riesgo. El riesgo se mide con un numerito, llamado riesgo relativo (*RR*), que compara la probabilidad de sufrir cierta enfermedad bajo cierta condición con la probabilidad de sufrirla en ausencia de la condición. Si el *RR* es 1 entonces las probabilidades son iguales y podríamos decir que la condición es inocua. Si el *RR* es menor a 1 entonces la condición disminuye las probabilidades de sufrir la enfermedad y decimos que constituye un factor de protección. Si el *RR* es mayor a 1 entonces la condición aumenta las probabilidades de sufrir la enfermedad y decimos que constituye un factor de riesgo. El grupo 1 entonces es aquel en donde están todos los productos para los cuales la evidencia a favor de que su *RR* > 1 es abrumadora, más allá de toda duda.

Ahora bien, ¿cuál es el problema? El problema es viejo, y tiene que ver con la forma en la que funciona la ciencia, en donde hay una sobreponderación de la significancia estadística, en detrimento de la significancia biológica (o económica, o social, o lo que fuera, dependiendo del tipo de investigación). Lo que hace un investigador es evaluar un efecto; la significancia estadística tiene que ver con la existencia del efecto y la significancia biológica con su tamaño. La significancia estadística se evalúa con el valor de probabilidad (*p*), ese inefable numerito que nos arroja el software cada vez que hacemos una prueba de hipótesis, que nos dice cuánta evidencia hay a favor del efecto que queremos demostrar, y que es, qué duda cabe, el amo y señor del mundo de la ciencia: Si *p* < 0.05 felicitaciones, su efecto es significativo y su artículo se publica, si *p* > 0.05, lo siento mucho, siga intentado; y en toda esta historia a muy pocos les importa el tamaño del efecto. El problema es de tanta relevancia en el mundo de la estadística que ya hay quienes sostienen que no se deberían enseñar procedimientos de pruebas de hipótesis en las universidades, y que estos debieran ser reemplazados totalmente por procedimientos que pongan énfasis en la estimación del tamaño de los efectos.

La OMS clasifica a los productos de acuerdo con su significancia estadística, esto es, de acuerdo con la cantidad de evidencia estadística a favor del efecto. Si la evidencia de que un producto aumente las probabilidades de sufrir algún tipo de cáncer es abrumadora, más allá de toda duda (en términos más estadísticos, si p es muy chiquito, menor a algún valor muy pequeño, cercano a 0), entonces va al grupo 1.

No sé si la OMS clasifique a los productos de acuerdo con el tamaño del efecto, pero lo que sí queda claro es que pone mucho más énfasis en su existencia. Hay evidencia contundente de que las carnes procesadas son cancerígenas y entonces van al grupo 1, junto con el tabaco, y al parecer poco importa (aquí viene el tamaño del efecto) que el *RR* para las primeras sea de 1.18 para cáncer colorrectal (según el reporte de la OMS) y que para el segundo se reporten valores incluso mayores que 100 para cáncer de pulmón (en ambos casos este es el *RR* para el grupo de consumidores severos, con más de 50g diarios de carnes procesadas o varios cigarrillos al día). El resultado, una información incompleta que lejos de educar confunde, y que ha generado toda una ola sensacionalista en la prensa. Para muestra un par de titulares (y ojo que vienen de la supuestamente prensa seria):

![Titular prensa 1][oms2]

![Titular prensa 2][oms3]

No pretendo defender a las carnes procesadas. Es bien sabido que su consumo en exceso es malo para la salud, y que están relacionadas con una serie de enfermedades y no solo con el cáncer. Por ejemplo el consumo de carnes procesadas está estrechamente relacionado con las enfermedades cardiovasculares, que se estima son responsables de un tercio de las muertes entre los mayores de 35 años (así que amigo, si te gusta mucho el tocino, no te preocupes por el cáncer colorrectal, es más probable que te mueras de un infarto). Pero sí creo que organizaciones como la OMS debieran tener más cuidado con la forma en la que procesan y sobre todo divulgan su información.

[oms1]: figuras/oms1.png "Meat and cancer evidence" 
[oms2]: figuras/oms2.jpg "CNN" 
[oms3]: figuras/oms3.jpg "ABC" 
