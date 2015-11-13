---
title: "Sensibilidad y especificidad"
author: "Ra�l Eyzaguirre"
date: "28/08/2013"
output: html_document
---

Los contratos financieros no son los �nicos documentos con letra chiquita. Cuando uno se hace una prueba de diagn�stico para una enfermedad, cuyo resultado es del tipo positivo o negativo, el documento emitido con el resultado de la prueba suele tener un par de n�meros, en letra chiquita, al pie de la p�gina. Estos n�meros son la sensibilidad y la especificidad de la prueba.

Antes de continuar hay que decir que no existe prueba 100% segura. Incluso las famosas pruebas de ADN para detectar paternidad son, lo vemos en las pel�culas, confiables solo al 99.99...% (no s� cu�ntos nueves van luego del punto decimal pero seguro son al menos dos). La sensibilidad de la prueba tiene que ver con la capacidad de la misma para detectar correctamente a un individuo enfermo, mientras que la especificidad tiene que ver con la capacidad de detectar correctamente a uno sano. Vemos por lo tanto que ambos n�meros, la sensibilidad y la especificidad, son probabilidades condicionales; la primera es la probabilidad de obtener un resultado positivo dado que la persona est� enferma, y la segunda es la probabilidad de obtener un resultado negativo dado que la persona est� sana. La pr�xima vez que se haga un examen de este tipo, f�jese en estos n�meros; pronto veremos algunos detalles interesantes sobre ellos.