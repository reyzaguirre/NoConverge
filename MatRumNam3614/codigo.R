# Datos

library(xlsx)
datos <- read.xlsx(file = "MatRumNam3614/resultados.xlsx",
                   sheetIndex = 1, rowIndex = 1:91, colIndex = 13:17)

# Simulaciones

source("MatRumNam3614/simula.R")

set.seed(1)
nelim <- 100000
resu <- simula(nelim)

# Guardar simulaciones para usar luego

save(resu, file= "MatRumNam3614/simulaciones.RData") # considera resultados hasta 2014
save(resu, file= "MatRumNam3614/simulaciones2.RData") # considera resultados hasta la ultima fecha
load("MatRumNam3614/simulaciones.RData")
load("MatRumNam3614/simulaciones2.RData")

# probabilidad de clasificar

pclas <- sort(table(c(resu[[2]][,1], resu[[2]][,2], resu[[2]][,3], resu[[2]][,4], resu[[2]][,5])),
              decreasing = TRUE)/nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Paraguay", "Colombia", "Ecuador",
                           "Uruguay", "Chile", "Perú", "Venezuela", "Bolivia"),
                  pclas = pclas)

# Grafico. Guardar en 950 x 600

color <- "darkorange1"
barplot(ddd$pclas, space = 0.8, names.arg = ddd$pais,
        col = c(rep(color, 7), 'red', rep(color, 2)))
title(main = "Probabilidad de clasificar a un mundial", font.main = 4)

# numero esperado de clasificatorias para ir al mundial

1/pclas["per"]

# al menos a uno de los proximos 2, 3, 4...

1 - (1-pclas["per"])^2
1 - (1-pclas["per"])^3
1 - (1-pclas["per"])^4
1 - (1-pclas["per"])^5
1 - (1-pclas["per"])^6
1 - (1-pclas["per"])^7
1 - (1-pclas["per"])^8
1 - (1-pclas["per"])^9
1 - (1-pclas["per"])^10

# probabilidad de quedar primero, segundo, etc

sort(table(resu[[2]][,1]))/nelim
sort(table(resu[[2]][,2]))/nelim
sort(table(resu[[2]][,3]))/nelim
sort(table(resu[[2]][,4]))/nelim
sort(table(resu[[2]][,5]))/nelim
sort(table(resu[[2]][,6]))/nelim
sort(table(resu[[2]][,7]))/nelim
sort(table(resu[[2]][,8]))/nelim
sort(table(resu[[2]][,9]))/nelim
sort(table(resu[[2]][,10]))/nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Paraguay", "Colombia", "Ecuador",
                           "Uruguay", "Chile", "Venezuela", "Perú", "Bolivia"),
                  pprim = sort(table(resu[[2]][,1]), decreasing = TRUE)/nelim)

barplot(ddd$pprim, space = 0.8, names.arg = ddd$pais,
        col = c(rep(color, 8), 'red', color, 2))
title(main = "Probabilidad de quedar primero en la clasificatoria", font.main = 4)

# media de puntos por pais

apply(resu[[1]], 2, mean)

# 95% de confianza para puntos de peru

quantile(resu[[1]][,8], probs = c(0.025, 0.975), type=7)

# Considerando los datos de Rusia 2018 para Qatar 2022

pclas <- sort(table(c(resu[[2]][,1], resu[[2]][,2], resu[[2]][,3], resu[[2]][,4], resu[[2]][,5])),
              decreasing = TRUE)/nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Paraguay", "Ecuador", "Colombia",
                           "Uruguay", "Chile", "Perú", "Venezuela", "Bolivia"),
                  pclas = pclas)

barplot(ddd$pclas, space = 0.8, names.arg = ddd$pais, ylim = c(0,1),
        col = c(rep(color, 7), 'red', rep(color, 2)))
title(main = "Probabilidad de clasificar a Qatar 2022", font.main = 4)
mtext("(El modelo incluye hasta los resultados de la fecha 2 de la clasificatoria Rusia 2018)",
      side = 3, line = 0.4, cex = 0.9)
mtext("AR: 0.929, BR: 0.884, PA: 0.660, EC: 0.641, CO: 0.640, UR: 0.542, CH: 0.518, PE: 0.080, VEN: 0.062, BO: 0.043",
      side = 1, line = 3, cex = 0.9)
      