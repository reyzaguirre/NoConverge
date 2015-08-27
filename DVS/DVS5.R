###########################################################################
## Código de la entrada DVS, AMMI y GGE
## 17/02/2014
###########################################################################

## ------------------------------------------------------------------------
X <- matrix(c( 0.35, -0.62,  0.00, -0.45,  0.74, -0.34,  0.33,
               0.04, -0.54, -0.13,  0.14,  0.82, -0.52,  0.20,
              -0.54,  0.80,  0.28,  0.38, -0.70,  0.29, -0.51,
               0.60, -0.01, -0.02, -0.27, -0.62,  0.21,  0.10,
              -0.24,  0.37, -0.59,  0.28,  0.07,  0.01,  0.11, 
              -0.10, -0.11,  0.31,  0.17,  0.16, -0.55,  0.12,
              -0.43,  0.60,  0.23,  0.13, -0.40,  0.62, -0.75,
               0.33, -0.50, -0.07, -0.38, -0.07,  0.29,  0.40),
            byrow=T, nrow=8, ncol=7,
             dimnames=list(c("COLOSSEO", "CRESO", "DUILIO", "GRAZIA", "IRIDE", "SANCARLO", "SIMETO", "SOLEX"),
                           c("1996", "1997", "1998", "1999", "2000", "2001", "2002")))
X


## ------------------------------------------------------------------------
DVS <- svd(X)
DVS


## ----echo=F, fig.width=6, fig.height=6-----------------------------------
D <- diag(DVS$d)
U <- DVS$u %*% D
V <- DVS$v %*% D
plot(1, type = 'n', asp=1, xlim = range(c(U[,1], V[,1]))*1.06, ylim = range(c(U[,2], V[,2])),
     xlab = "PC1 (66.4%)", ylab = "PC2 (19.8%)")
points(U[,1], U[,2], col = "red", lwd = 2, pch=15)
text(U[,1], U[,2], labels = row.names(X), adj = c(0.5, 0.5), col = "red", pos=1)
points(V[,1], V[,2], col = "blue", lwd = 2, pch=17)
text(V[,1], V[,2], labels = colnames(X), adj = c(0.5, 0.5), col = "blue", pos=1)
abline(h = 0, v = 0, col="green", lty = 2)


## ------------------------------------------------------------------------
DVS$u %*% diag(DVS$d)[,1:2]
DVS$v %*% diag(DVS$d)[,1:2]


## ----echo=F, fig.width=6, fig.height=6-----------------------------------
D <- diag(DVS$d)
U <- DVS$u %*% D^.5
V <- DVS$v %*% D^.5
plot(1, type = 'n', asp=1, xlim = range(c(U[,1], V[,1]))*1.06, ylim = range(c(U[,2], V[,2])),
     xlab = "PC1 (66.4%)", ylab = "PC2 (19.8%)")
points(U[,1], U[,2], col = "red", lwd = 2, pch=15)
text(U[,1], U[,2], labels = row.names(X), adj = c(0.5, 0.5), col = "red", pos=1)
points(V[,1], V[,2], col = "blue", lwd = 2, pch=17)
text(V[,1], V[,2], labels = colnames(X), adj = c(0.5, 0.5), col = "blue", pos=1)
abline(h = 0, v = 0, col="green", lty = 2)


