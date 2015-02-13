
## ------------------------------------------------------------------------
require(fortunes)
fortune("resistance")


## ----eval=F--------------------------------------------------------------
## install.packages('RCurl')
## install.packages('XML')


## ----eval=F--------------------------------------------------------------
## install.packages('RWordPress', repos = 'http://www.omegahat.org/R', type = 'source')


## ----eval=F--------------------------------------------------------------
## opts_knit$set(base.url = 'https://dl.dropboxusercontent.com/u/72126317/wp/',
##               base.dir = 'C:/Users/Raul/Dropbox/Public/wp/')


## ------------------------------------------------------------------------
require(UsingR); data(galton)


## ------------------------------------------------------------------------
str(galton)
modelo <- lm(child ~ parent, data=galton)
coef(modelo)
anova(modelo)


## ----fig.width=5, fig.height=5-------------------------------------------
plot(galton$parent, galton$child, xlab="Talla padres", ylab="Talla hijos", pch=19, col="blue")
lines(galton$parent, modelo$fitted, col="green",lwd=3)

