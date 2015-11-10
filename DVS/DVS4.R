###########################################################################
## Código de la entrada Descomposición en Valores Singulares
## 10/02/2014
###########################################################################

## ------------------------------------------------------------------------
X <- matrix(c( 5, -1, -2,
               4,  4, -1,
              -2,  5, -3,
              -7, -8,  6),
            byrow = T, nrow = 4, ncol = 3,
            dimnames = list(c("P1", "P2", "P3", "P4"), c("V1", "V2", "V3")))
X
S <- t(X) %*% X
S
eigen(S)


## ------------------------------------------------------------------------
svd(X)


## ------------------------------------------------------------------------
eigen(S)$values
svd(X)$d^2


## ------------------------------------------------------------------------
eigen(S)$vectors
svd(X)$v


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
EA <- eigen(S)
PT <- X %*% EA$vectors
plot(1, type = 'n', asp = 1, xlim = range(PT[, 1]), ylim = range(PT[, 2]),
     xlab = "PC1 (80.6%)", ylab = "PC2 (17.4%)")
points(PT[, 1], PT[, 2], col = "red", lwd = 2, pch = 15)
text(PT[, 1], PT[, 2], labels = row.names(PT), adj = c(0.5, 0.5), col = "red", pos = 1)
abline(h = 0, v = 0, col = "green", lty = 2)
for (i in 1:4)
  lines(c(0, PT[i, 1]), c(0, PT[i, 2]), col = "red", lty = 3)


## ------------------------------------------------------------------------
V <- eigen(S)$vectors
V


## ------------------------------------------------------------------------
X %*% V


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
DVS <- svd(X)
D <- diag(DVS$d)
P <- DVS$u %*% D
V <- DVS$v %*% D
plot(1, type = 'n', asp = 1, xlim = range(c(-P[, 1], -V[, 1])),
     ylim = range(c(P[,2], V[,2])), xlab = "PC1 (80.6%)", ylab = "PC2 (17.4%)")
points(-P[, 1], P[, 2], col = "red", lwd = 2, pch = 15)
text(-P[, 1], P[, 2], labels = row.names(X), adj = c(0.5, 0.5), col = "red", pos = 1)
points(-V[, 1], V[, 2], col = "blue", lwd = 2, pch = 17)
text(-V[, 1], V[, 2], labels = colnames(X), adj = c(0.5, 0.5), col = "blue", pos = 1)
abline(h = 0, v = 0, col = "green", lty = 2)


