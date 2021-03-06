model{
	for (i in 1:I){
    for (j in 1:J){
      Y[i,j] ~ dt(mu[i], t2, 5)
      }
    mu[i] ~ dnorm(u, t2u)
    }
	u ~ dnorm(0, 0.000001)
	t2 ~ dgamma(0.001, 0.001)
	s2 <- 1/t2
	t2u ~ dgamma(0.001, 0.001)
	s2u <- 1/t2u	
}
