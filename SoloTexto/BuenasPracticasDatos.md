---
title: "Buenas Pr�cticas para el Manejo y An�lisis de Datos"
author: "Raul Eyzaguirre"
output: html_document
---

Mucha gente trabaja hoy en d�a con datos, y no unos pocos, sino grandes cantidades de datos. Quisiera compartir con ustedes en esta entrada algunas pautas que podr�an ser de utilidad para hacer nuestro trabajo m�s sencillo, mas r�pido y con menos errores.

## Tenga un solo archivo de datos

T�picamente cualquiera que trabaje con datos terminar� teniendo varios archivos con diferentes copias de los datos y varios archivos con pasos intermedios. Si usted est� trabajando con datos, debi� haber un momento en el que tuvo un solo archivo, por ejemplo de nombre datos, pero ahora probablemente tenga:

* datos
* datos\_V01
* datos\_V02
* datos\_V02\_1
* datos\_DDMMAA
* datos\_final
* datos\_ultimo y muchos otros.

Adem�s seguramente tenga algunos otros archivos con datos procesados como:

* datos\_limpio
* datos\_limpio\_ultimo
* datos\_con\_medias
* datosajustados
* datosajustadoslimpios y muchos m�s.

Esto no es una buena pr�ctica porque incrementa la probabilidad de cometer errores y obtener resultados inconsistentes. En alg�n momento usted seguramente perder� la pista de qu� an�lisis fueron hechos con qu� archivos, y entonces usted tendr� (y publicar�) resultados inconsistentes ya que fueron realizados con distintos datos. Este problema se complica a�n m�s si usted trabaja con varios colegas y cada uno tiene sus propios archivos de datos.

Trate de tener un solo archivo de datos, y mejor si este archivo tiene los datos brutos, sin ning�n tipo de procesamiento. Si sus datos provienen de distintas fuentes entonces podr�a tener un archivo por cada fuente, o quiz�s mejor, un solo archivo de base de datos con una tabla diferente para cada fuente de datos. Si a usted le gustan las hojas de c�lculo, entonces trate de tener un solo archivo con varias hojas, una para cada fuente de datos, y si este es el caso, no trate de ninguna manera de colocar todos los datos en una sola hoja utilizando copiar y pegar; es muy peligroso. Si trabaja con colegas, una buena opci�n es tener los datos en un repositorio al que todos tengan acceso y en el que todos puedan editar, con control de cambios, como [Dropbox](https://www.dropbox.com) o [GitHub](https://github.com/), para saber qui�n hizo qu� y poder volver a versiones anteriores de ser necesario.

## El formato de tabla de datos

Para datos de una sola fuente usted debe tener solo una tabla de datos. La tabla es el formato est�ndar para an�lisis de datos y es el tipo de estructura de datos que le gusta a cualquier programa estad�stico. En una tabla de datos se tiene:

* una fila para cada caso u observaci�n y
* una columna para cada variable.


Si tiene varias tablas para datos provenientes de distintas fuentes, entonces cada tabla debe tener una columna adicional que le permita unirse con otras.

## Use etiquetas est�ndar

Para cada tabla de datos es bueno usar etiquetas cortas para nombrar las variables. Si el trabajo de investigaci�n se realiza siempre con el mismo conjunto de variables, entonces es bueno definir un conjunto de etiquetas est�ndar porque esto hace que sea m�s f�cil compartir datos con colegas y revisar en el futuro an�lisis hechos en el pasado. Si en su grupo de trabajo a�n no han definido un conjunto de etiquetas est�ndar, quiz� este sea el momento de hacerlo. Es una buena pr�ctica tener un archivo de texto o un documento f�sico con las etiquetas est�ndar y sus descripciones completas. Algunas recomendaciones para las etiquetas son:

* Trate de usar etiquetas tan cortas como sea posible.
* Evite combinar may�sculas con min�sculas, y use de preferencia min�sculas.
* Evite los caracteres especiales.
* Use palabras sin espacios en blanco.

## Documente su an�lisis

Para un an�lisis muy sencillo usted puede usar cualquier tipo de programa dirigido por men�s (estos son el tipo de programas en los que usted tiene que hacer muchos clics con el rat�n y no tiene que escribir mucho), pero para an�lisis m�s complicados es mejor usar programas dirigidos por comandos como por ejemplo [R](https://cran.r-project.org/). �Qu� es un an�lisis m�s complicado? Creo que un an�lisis es lo suficientemente complicado como para usar un programa dirigido por comandos si al tratar de hacer el an�lisis con un programa dirigido por men�s usted necesita:

* Al menos dos de estos programas (por ejemplo uno para procesar los datos y otro para el an�lisis estad�stico).
* Al menos dos pasos en el an�lisis estad�stico (por ejemplo un paso para calcular ciertas estad�sticas que ser�n usadas luego como datos de entrada para un segundo paso).
* Demasiados clics con el rat�n (creo que 10 es un buen l�mite superior).

�Por qu� es mejor usar un programa dirigido por comandos en estas situaciones?

* Cuando se usan diferentes programas con varios pasos, se necesita manipular los datos para usarlos con los diferentes programas y grabar datos procesados para los pasos intermedios. Al hacer esto, uno termina con un mont�n de archivos con resultados intermedios y finales que dependen unos de otros. En unos d�as (en algunos casos incluso en unas horas o minutos) uno pierde la pista de qu� es lo que hizo y c�mo lo hizo, lo que incrementa la probabilidad de cometer errores.
* Es muy dif�cil documentar los procedimientos de an�lisis de datos cuando se utiliza un programa dirigido por men�s. Cuando se usa un programa dirigido por comandos, el c�digo para el an�lisis es en s� mismo la documentaci�n del an�lisis.
* Cuando se usa un programa dirigido por men�s y se comete un error, debido a que lo m�s probable es que no se tenga documentaci�n del an�lisis, uno podr�a nunca darse cuenta de que se cometi� un error.
* Si uno se da cuenta de que algo estaba mal con los datos brutos, entonces hay que hacer todo de nuevo. T�picamente uno tiene que hacer todo el an�lisis varias veces. Si se est� trabajando con varios programas dirigidos por men�s, esto consume mucho tiempo.
* Con un programa dirigido por comandos no es necesario grabar los pasos intermedios ni los resultados finales, solo el archivo con el c�digo. Si algo pas� con los datos brutos, lo �nico que hay que hacer es correr el c�digo de nuevo. Esto ahorra mucho tiempo y previene cometer errores.

## Reproducibilidad es la palabra clave

Si usted trabaja con un programa dirigido por comandos y sigue estas instrucciones debe terminar con solo dos archivos, uno con los datos brutos y uno con el c�digo para procesar y analizar los datos. La idea clave aqu� es que cualquiera con estos dos archivos debe ser capaz de reproducir su an�lisis, y por lo tanto, obtener exactamente los mismos resultados que usted obtuvo, sin importar lo complicado que sea el an�lisis. Este es el concepto de reproducibilidad. Reproducibilidad es importante porque:

* Ayuda a prevenir y corregir errores. Mientras m�s gente reproduzca el an�lisis, mayores ser�n las probabilidades de detectar y corregir errores.
* Hace que el an�lisis sea transparente, sin cajas negras.
* Obliga a documentar el an�lisis, lo cual es muy �til para futuras referencias.
* Nos ayuda a ahorrar tiempo, mucho tiempo.

Si usted todav�a no est� convencido sobre la importancia de la reproducibilidad, quiz� deber�a ver [este video](http://videolectures.net/cancerbioinformatics2010_baggerly_irrh/).
