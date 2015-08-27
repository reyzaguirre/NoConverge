###########################################################################
## Código de la entrada Valores y Vectores Propios
## 28/01/2014
###########################################################################

## ------------------------------------------------------------------------
X <- matrix(c( 70, 75, 97, 87, 63, 79, 74, 85, 88, 73, 174, 172, 181, 185, 163, 176, 169, 180, 187, 177),
             nrow=10, ncol=2,
             dimnames=list(c("P01", "P02", "P03", "P04", "P05", "P06", "P07", "P08", "P09", "P10"),
                           c("peso", "talla")))
X


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)


## ------------------------------------------------------------------------
var(X[,"peso"])
var(X[,"talla"])


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)
abline(h=mean(X[,"talla"]), v=mean(X[,"peso"]), col="green", lty = 2)


## ----echo=FALSE, fig.width=5, fig.height=5-------------------------------
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)
abline(h=mean(X[,"talla"]), v=mean(X[,"peso"]), col="green", lty = 2)
for (i in 1:10) lines(c(X[i,"peso"], X[i,"peso"]), c(mean(X[,"talla"]), X[i,"talla"]), col="red", lty=3)


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)
abline(h=mean(X[,"talla"]), v=mean(X[,"peso"]), col="green", lty = 2)
for (i in 1:10) lines(c(mean(X[,"peso"]), X[i,"peso"]), c(X[i,"talla"], X[i,"talla"]), col="red", lty=3)


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
S <- cov(X)
ES <- eigen(S)
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)
b1 <- ES$vectors[2,1]/ES$vectors[1,1]
a1 <- mean(X[,"talla"]) - b1*mean(X[,"peso"])
abline(c(a1, b1), col="green", lty = 2)
b2 <- ES$vectors[2,2]/ES$vectors[1,2]
a2 <- mean(X[,"talla"]) - b2*mean(X[,"peso"])
abline(c(a2, b2), col="green", lty = 2)


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)
abline(c(a1, b1), col="green", lty = 2)
abline(c(a2, b2), col="green", lty = 2)
for (i in 1:10){
  x <- (mean(X[,"peso"])*b1 - X[i,"peso"]*b2 + X[i,"talla"] - mean(X[,"talla"]))/(b1-b2)
  y <- b2*(x - X[i,"peso"]) + X[i,"talla"]
  lines(c(X[i,"peso"], x), c(X[i,"talla"], y), col="red", lty=3)
}  


## ----echo=F, fig.width=5, fig.height=5-----------------------------------
plot(X[,"peso"], X[,"talla"], xlab="Peso", ylab="Talla", pch=19, col="blue", asp=1)
abline(c(a1, b1), col="green", lty = 2)
abline(c(a2, b2), col="green", lty = 2)
for (i in 1:10){
  x <- (mean(X[,"peso"])*b2 - X[i,"peso"]*b1 + X[i,"talla"] - mean(X[,"talla"]))/(b2-b1)
  y <- b1*(x - X[i,"peso"]) + X[i,"talla"]
  lines(c(X[i,"peso"], x), c(X[i,"talla"], y), col="red", lty=3)
}  


## ------------------------------------------------------------------------
S <- cov(X)
eigen(S)


