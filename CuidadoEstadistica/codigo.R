
## ------------------------------------------------------------------------
datos <- data.frame(ind = rep(c("I1", "I2", "I3", "I4", "I5"), 4),
                    y = c(61, 164, 124, 205, 210, 53, 97, 139, 144, 242,
                          48, 121, 151, 196, 256, 115, 135, 175, 159, 92))	


## ------------------------------------------------------------------------
medias <- tapply(datos$y, datos$ind, mean)
medias


## ------------------------------------------------------------------------
datos$y[datos$ind == 'I1']


## ------------------------------------------------------------------------
datos$y[datos$ind == 'I5']


## ------------------------------------------------------------------------
mean(datos$y)


## ------------------------------------------------------------------------
library(fortunes)
fortune('BLUP')


## ------------------------------------------------------------------------
library(lme4)


## ------------------------------------------------------------------------
modelo.reml <- lmer(y ~ (1|ind), data = datos)


## ------------------------------------------------------------------------
blups <- mean(datos$y) + ranef(modelo.reml)$ind
blups


## ----echo=FALSE----------------------------------------------------------
plot(0.3, mean(datos$y), xlim = c(0, 3), ylim = c(50, 220), xlab = "", ylab = "", xaxt = "n")
text(0.2, mean(datos$y), expression(hat(mu)), cex = 0.8)
mtext("Medias", 3, cex = 0.8, at = 1.6)
points(rep(1.6, 5), medias)
text(rep(1.4, 5), medias, names(medias), cex = 0.8)
mtext("BLUP's", 3, cex = 0.8, at = 2.6)
points(rep(2.6,5), (blups)[, 1])
text(rep(2.4, 5), (blups)[, 1], rownames(blups), cex = 0.8)


## ------------------------------------------------------------------------
datosb <- list(I = 5, J = 4, Y = structure(.Data = datos$y, .Dim = c(5, 4)))


## ------------------------------------------------------------------------
library(R2OpenBUGS)
parameters <- c("mu", "s2")
inits1 <- list(mu = rep(120, 5), t2 = 1/1000)
inits2 <- list(mu = rep(140, 5), t2 = 1/2000)
inits3 <- list(mu = rep(160, 5), t2 = 1/3000)
inits <- list(inits1, inits2, inits3)
modelo.bfix <- bugs(datosb, inits, parameters, "modelo_1.R", n.chains = 3,
                    n.thin = 10, n.iter = 10000, n.burnin = 1000, debug = F,
                    bugs.seed = 1)


## ------------------------------------------------------------------------
print(modelo.bfix$summary[1:5, 1], digits=4)
medias


## ------------------------------------------------------------------------
parameters <- c("u", "mu", "s2u", "s2")
inits1 <- list(u = 120, mu = rep(120, 5), t2u = 1/2000, t2 = 1/2000)
inits2 <- list(u = 140, mu = rep(140, 5), t2u = 1/3000, t2 = 1/3000)
inits3 <- list(u = 160, mu = rep(160, 5), t2u = 1/4000, t2 = 1/4000)
inits <- list(inits1, inits2, inits3)
modelo.bran <- bugs(datosb, inits, parameters, "modelo_2.R", n.chains = 3,
                    n.thin = 10, n.iter = 10000, n.burnin = 1000, debug = F,
                    bugs.seed = 1)
print(modelo.bran$summary[2:6, 1], digits=4)
t(blups)


## ----echo=FALSE----------------------------------------------------------
plot(0.3, mean(datos$y), xlim = c(0,3), ylim = c(50,220), xlab="", ylab="", xaxt="n")
text(0.2, mean(datos$y), expression(hat(mu)), cex=.8)
mtext("Medias", 3, cex=.8, at=1.1)
points(rep(1.1,5), medias)
text(rep(0.95,5), medias, names(medias), cex=.8)
mtext("BLUP's", 3, cex=.8, at=1.9)
points(rep(1.9,5), (blups)[,1])
text(rep(1.75,5), (blups)[,1], rownames(blups), cex=.8)
mtext("Bayes", 3, cex=.8, at=2.7)
points(rep(2.7,5), modelo.bran$summary[2:6, 1])
text(rep(2.55,5), modelo.bran$summary[2:6, 1], rownames(blups), cex=.8)


## ------------------------------------------------------------------------
library(lattice)
stripplot(y ~ ind, xlab = "Individuo", ylab = "y", type = c("p","a"), data = datos,
          cex=1.2)


## ------------------------------------------------------------------------
parameters <- c("u", "mu", "s2u", "s2")
inits1 <- list(u = 120, mu = rep(120, 5), t2u = 1/2000, t2 = 1/2000)
inits2 <- list(u = 140, mu = rep(140, 5), t2u = 1/3000, t2 = 1/3000)
inits3 <- list(u = 160, mu = rep(160, 5), t2u = 1/4000, t2 = 1/4000)
inits <- list(inits1, inits2, inits3)
modelo.brant <- bugs(datosb, inits, parameters, "modelo_3.R", n.chains = 3,
                     n.thin = 10, n.iter = 10000, n.burnin = 1000, debug = F,
                     bugs.seed = 1)
print(modelo.brant$summary[2:6, 1], digits=4)


