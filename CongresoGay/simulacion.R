# Distribución de pi, proporción de gays

qbeta(.025,3.3,92)
qbeta(.975,3.3,92)

qbeta(.005,3.3,92)
qbeta(.995,3.3,92)

3.3/95.3

# Simulación de 100 000 valores del número de gays en el congreso

set.seed(123)

pi <- rbeta(100000, 3.3, 92)
n <- rbinom(100000, 130, pi)

# Intervalos

quantile(n, c(0.025, 0.975))
quantile(n, c(0.005, 0.995))

# Probabilidad de al menos un congresista gay

mean(n>0)

# Probabilidad de al menos 2 congresistas gays

mean(n>1)

# Probabilidad de al menos 2 congresistas gays dado que hay al menos uno

mean(n>1)/mean(n>0)

# Valor esperado del número de congresistas gays

mean(n)

# Valor esperado del número de congresistas gays dado que hay al menos uno

nc <- n[n>0]
mean(nc)

# Intervalos dado que hay al menos un congresista gay

quantile(nc, c(0.025, 0.975))
quantile(nc, c(0.005, 0.995))

# Probabilidades para el número de congresistas gays dado que hay al menos uno

table(nc)/length(nc)
