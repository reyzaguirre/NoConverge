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

save(resu, file= "MatRumNam3614/simulaciones.RData")
load("MatRumNam3614/simulaciones.RData")

# probabilidad de clasificar

pclas <- sort(table(c(resu[[2]][,1], resu[[2]][,2], resu[[2]][,3], resu[[2]][,4], resu[[2]][,5])),
              decreasing = TRUE)/nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Paraguay", "Colombia", "Ecuador",
                           "Uruguay", "Chile", "Perú", "Venezuela", "Bolivia"),
                  pclas = pclas)

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
