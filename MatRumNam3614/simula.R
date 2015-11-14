simula <- function(nelim) {
  clasi <- data.frame(array(NA, c(nelim, 10)))
  # tpos = tabla de posiciones
  tpos <- data.frame(array(NA, c(1, 10)))
  colnames(tpos) <- c("arg", "bol", "bra", "chi", "col", "ecu", "par", "per", "uru", "ven")
  for (j in 1:nelim) {
    datos$ploc <- 0
    datos$pvis <- 0
    for (i in 1:90) {
      resul <- runif(1)
      if (resul < datos$pgan[i]) {
        datos$ploc[i] <- 3
      } else {
          if (resul < datos$pgan[i] + datos$pemp[i]) {
            datos$ploc[i] <- datos$pvis[i] <- 1
          } else {
              datos$pvis[i] <- 3
          }
      }
    }
    tpos[j, 1]  <- sum(subset(datos, local == "Argentina")$ploc) + sum(subset(datos, visita == "Argentina")$pvis)
    tpos[j, 2]  <- sum(subset(datos, local == "Bolivia")$ploc)   + sum(subset(datos, visita == "Bolivia")$pvis)
    tpos[j, 3]  <- sum(subset(datos, local == "Brasil")$ploc)    + sum(subset(datos, visita == "Brasil")$pvis)
    tpos[j, 4]  <- sum(subset(datos, local == "Chile")$ploc)     + sum(subset(datos, visita == "Chile")$pvis)
    tpos[j, 5]  <- sum(subset(datos, local == "Colombia")$ploc)  + sum(subset(datos, visita == "Colombia")$pvis)
    tpos[j, 6]  <- sum(subset(datos, local == "Ecuador")$ploc)   + sum(subset(datos, visita == "Ecuador")$pvis)
    tpos[j, 7]  <- sum(subset(datos, local == "Paraguay")$ploc)  + sum(subset(datos, visita == "Paraguay")$pvis)
    tpos[j, 8]  <- sum(subset(datos, local == "Peru")$ploc)      + sum(subset(datos, visita == "Peru")$pvis)
    tpos[j, 9]  <- sum(subset(datos, local == "Uruguay")$ploc)   + sum(subset(datos, visita == "Uruguay")$pvis)
    tpos[j, 10] <- sum(subset(datos, local == "Venezuela")$ploc) + sum(subset(datos, visita == "Venezuela")$pvis)
    ind <- order(jitter(as.numeric(tpos[j, ])))
    clasi[j, ] <- colnames(tpos)[c(ind[10], ind[9], ind[8], ind[7], ind[6], ind[5], ind[4], ind[3], ind[2], ind[1])]
  }
  list(tpos, clasi)
}