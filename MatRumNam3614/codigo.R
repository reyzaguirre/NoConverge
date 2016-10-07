# Datos

library(xlsx)
datos <- read.xlsx(file = "MatRumNam3614/resultados.xlsx",
                   sheetIndex = 1, rowIndex = 1:91, colIndex = 14:17)

# Simulaciones

source("MatRumNam3614/simula.R")
load("MatRumNam3614/simulaciones.RData")

set.seed(1)
sim18 <- simula(nelim) # simulaciones considerando resultados hasta la ultima fecha 2018

# Guardar simulaciones

save(sim14, sim18, nelim, color, file = "MatRumNam3614/simulaciones.RData")

# Probabilidad de clasificar

pclas <- sort(table(c(sim14[[2]][, 1], sim14[[2]][, 2], sim14[[2]][, 3], sim14[[2]][, 4],
                      sim14[[2]][, 5])), decreasing = TRUE) / nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Paraguay", "Colombia", "Ecuador",
                           "Uruguay", "Chile", "Perú", "Venezuela", "Bolivia"),
                  pclas = as.vector(pclas))

# MRN_fig01.png (950 x 600)

barplot(ddd$pclas, space = 0.8, names.arg = ddd$pais, ylim = c(0, 1),
        col = c(rep(color, 7), 'red', rep(color, 2)))
title(main = "Probabilidad de clasificar a un mundial", font.main = 4)
mtext("AR: 0.944,  BR: 0.894,  PA: 0.666,  CO: 0.645,  EC: 0.625,  UR: 0.520,  CH: 0.480,  PE: 0.100,  VE: 0.073,  BO: 0.052",
      side = 1, line = 3, cex = 0.9)

# Numero esperado de clasificatorias para ir al mundial

1 / pclas["per"]

# Al menos a uno de los proximos 2, 3, 4...

1 - (1 - pclas["per"])^2
1 - (1 - pclas["per"])^3
1 - (1 - pclas["per"])^4
1 - (1 - pclas["per"])^5
1 - (1 - pclas["per"])^6
1 - (1 - pclas["per"])^7
1 - (1 - pclas["per"])^8
1 - (1 - pclas["per"])^9
1 - (1 - pclas["per"])^10

# Probabilidad de quedar primero, segundo, etc

sort(table(sim14[[2]][, 1])) / nelim
sort(table(sim14[[2]][, 2])) / nelim
sort(table(sim14[[2]][, 3])) / nelim
sort(table(sim14[[2]][, 4])) / nelim
sort(table(sim14[[2]][, 5])) / nelim
sort(table(sim14[[2]][, 6])) / nelim
sort(table(sim14[[2]][, 7])) / nelim
sort(table(sim14[[2]][, 8])) / nelim
sort(table(sim14[[2]][, 9])) / nelim
sort(table(sim14[[2]][, 10])) / nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Paraguay", "Colombia", "Ecuador",
                           "Uruguay", "Chile", "Venezuela", "Perú", "Bolivia"),
                  pprim = sort(as.vector(table(sim14[[2]][, 1])), decreasing = TRUE) / nelim)

# MRN_fig02.png (950 x 600)

barplot(ddd$pprim, space = 0.8, names.arg = ddd$pais,
        col = c(rep(color, 8), 'red', color))
title(main = "Probabilidad de quedar primero en la clasificatoria", font.main = 4)
mtext("AR: 0.455,  BR: 0.254,  PA: 0.080,  CO: 0.075,  EC: 0.052,  UR: 0.042,  CH: 0.039,  VE: 0.002,  PE: 0.002,  BO: 0.001",
      side = 1, line = 3, cex = 0.9)

# Media de puntos por pais

apply(sim14[[1]], 2, mean)

# 95% de confianza para puntos de peru

quantile(sim14[[1]][, 8], probs = c(0.025, 0.975), type = 7)

# Grafico incluyendo resultados Rusia 2018

pclas <- sort(table(c(sim18[[2]][, 1], sim18[[2]][, 2], sim18[[2]][, 3], sim18[[2]][, 4],
                      sim18[[2]][, 5])), decreasing = TRUE) / nelim

ddd <- data.frame(pais = c("Argentina", "Brasil", "Colombia", "Paraguay", "Ecuador",
                           "Uruguay", "Chile", "Perú", "Venezuela", "Bolivia"),
                  pclas = as.vector(pclas))

# MRN_fig03.png (950 x 600)

barplot(ddd$pclas, space = 0.8, names.arg = ddd$pais, ylim = c(0, 1),
        col = c(rep(color, 7), 'red', rep(color, 2)))
title(main = "Probabilidad de clasificar a Qatar 2022", font.main = 4)
mtext("(El modelo incluye hasta los resultados de la fecha 9 de la clasificatoria Rusia 2018)",
      side = 3, line = 0.4, cex = 0.9)
mtext("AR: 0.934,  BR: 0.920,  CO: 0.664,  PA: 0.641,  EC: 0.612,  UR: 0.589,  CH: 0.471,  PE: 0.077,  VE: 0.050,  BO: 0.042",
      side = 1, line = 3, cex = 0.9)
