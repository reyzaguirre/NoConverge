---
title: "Y dale con la medicina"
author: "Raul Eyzaguirre"
output: html_document
---

La salud es tema que a todos nos interesa y sobretodo cuando se trata de la propia. Ya en entradas anteriores les he comentado sobre algunos n�meros utilizados en medicina, como la [sensibilidad y especificidad](https://reyzaguirre.wordpress.com/2013/08/28/sensibilidad-y-especificidad/) de una prueba de diagn�stico y el [riesgo relativo](https://reyzaguirre.wordpress.com/2013/10/09/antenas-celulares-cancer-y-mas/). En cualquier caso lo importante aqu� son dos cosas:

1. Que el profesional de la salud entienda correctamente estas medidas y sepa transmitir el mensaje correcto a su paciente.
2. Que el paciente entienda la informaci�n que le da su m�dico (raz�n por la cual hay que prestar mucha atenci�n a la clase de estad�stica).

Cada vez que me toca visitar al pediatra para el control rutinario de mis hijos, cuando luego de pesarlos y tallarlos me dice que est�n en el percentil 25 de talla y 50 de peso, me pregunto qu� pensar�n los padres cuando escuchan esta informaci�n. El concepto de percentil no es complicado pero estoy seguro de que si le pidi�ramos a los padres una explicaci�n con sus palabras a la hora de salir de la consulta nos encontrar�amos con sorpresas (y probablemente tambi�n nos encontrar�amos con sorpresas si le hici�ramos la pregunta al pediatra, que varias veces he estado tentado de hacerme el tonto y preguntarle qu� significa esto).

Parte del problema es que la mayor�a de los n�meros utilizados para transmitir informaci�n en este campo son probabilidades, [probabilidades condicionales](https://reyzaguirre.wordpress.com/2013/09/06/cuidado-con-las-condicionales/), o cocientes de probabilidades, y en todos estos casos, estos n�meros son dif�ciles de interpretar. Al respecto me encontr� con esta [entrada](http://www.decisionsciencenews.com/2010/12/03/some-ideas-on-communicating-risks-to-the-general-public/) que da ejemplos interesantes. Les comento un par:

1. Probabilidades condicionales: Suponga que la probabilidad de c�ncer colorectal en cierta poblaci�n es 0.3%. Si una persona tiene c�ncer colorectal, la probabilidad de que la prueba haemoccult de positivo es 50% (esta es la sensibilidad). Si la persona no tiene c�ncer colorectal, la probabilidad de que la prueba de positivo es 3% (tasa de falsos positivos). �Cu�l es la probabilidad de que una persona para la cual la prueba dio positivo tenga c�ncer colorectal? Muchos responder�n que 50%, otros que 47% (la sensibilidad menos la tasa de falsos positivos). La respuesta correcta es 4.8% y para hallar este n�mero se necesita el teorema de Bayes, que todos los que han ido a la universidad han estudiado pero, �alguien lo recuerda?
2. Riesgos relativos. Una mamograf�a despu�s de los 40 a�os reduce el riesgo de c�ncer de mama en 25%. Este dato es prometedor e invita a todas la mujeres en esa edad a hacerse la mamograf�a. Sin embargo, solo con este dato, dado que al calcular los porcentajes se borran los denominadores (total de muestra), no es posible decir cu�l es la reducci�n en el riesgo absoluto, esto es, la disminuci�n en la probabilidad de desarrollar c�ncer de mama. La respuesta en este caso es 0.1% (con este n�mero la mamograf�a ya no suena tan importante). Tampoco se puede decir a cu�ntas mujeres habr�a que hacerles una mamograf�a para salvar una vida. En este caso la respuesta es alrededor de 1000, y no 4 como quiz� algunos podr�an pensar a partir del 25% inicial. El dato del riesgo relativo por s� solo puede en este caso hacernos juzgar incorrectamente la efectividad del tratamiento.

Bueno, los dejo con la [entrada](http://www.decisionsciencenews.com/2010/12/03/some-ideas-on-communicating-risks-to-the-general-public/). Espero que les resulte interesante.