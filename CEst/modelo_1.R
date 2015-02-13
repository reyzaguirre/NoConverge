model{
	for (i in 1:I){
    for (j in 1:J){
      Y[i,j] ~ dnorm(mu[i], t2)
      }
    mu[i] ~ dnorm(0, 0.000001)
    }
  t2 ~ dgamma(0.001, 0.001)
  s2 <- 1/t2
}