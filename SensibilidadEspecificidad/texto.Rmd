---
title: "Sensibilidad y especificidad"
author: "Raúl Eyzaguirre"
output: html_document
---

Los contratos financieros no son los únicos documentos con letra chiquita. Cuando uno se hace una prueba de diagnóstico para una enfermedad, cuyo resultado es del tipo positivo o negativo, el documento emitido con el resultado de la prueba suele tener un par de números, en letra chiquita, al pie de la página. Estos números son la sensibilidad y la especificidad de la prueba.

Antes de continuar hay que decir que no existe prueba 100% segura. Incluso las famosas pruebas de ADN para detectar paternidad son, lo vemos en las películas, confiables solo al 99.99...% (no sé cuántos nueves van luego del punto decimal pero seguro son al menos dos). La sensibilidad de la prueba tiene que ver con la capacidad de la misma para detectar correctamente a un individuo enfermo, mientras que la especificidad tiene que ver con la capacidad de detectar correctamente a uno sano. Vemos por lo tanto que ambos números, la sensibilidad y la especificidad, son probabilidades condicionales; la primera es la probabilidad de obtener un resultado positivo dado que la persona está enferma, y la segunda es la probabilidad de obtener un resultado negativo dado que la persona está sana. La próxima vez que se haga un examen de este tipo, fíjese en estos números; pronto veremos algunos detalles interesantes sobre ellos.