datos <- read.csv("datos.csv")
source("simula.R")

set.seed(1)
nelim <- 100000
resu <- simula(nelim)

# prob de clasificar
(pclas <- sort(table(c(resu[[2]][,1], resu[[2]][,2], resu[[2]][,3], resu[[2]][,4], resu[[2]][,5])))/nelim)

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

# prob de quedar primero, segundo, etc
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

# media de puntos por pais
apply(resu[[1]], 2, mean)

# 95% de confianza para puntos de peru
quantile(resu[[1]][,8], probs = c(0.025, 0.975), type=7)
