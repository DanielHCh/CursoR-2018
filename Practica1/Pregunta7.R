#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

# Item a
f1<- c(13563,-14156,-14319,16981,12921,11979,9568,8833,-12968, 8133)
f1^75

#Elevando a la potencia 75 los elementos de f1
m <- matrix((f1^75))

#Elementos diferentes a -Inf al elevarlo a la 75
index1 <- which(m!=-Inf)
f1[index1]

#Elementos diferentes a Inf al elevarlo a la 75
index2 <- which(m!=Inf)
f1[index2]


#Item b
varMatriz <- matrix(c(77875.40, 27551.45, 23764.30, -36478.88, -35466.25, -73333.85, 36599.69, -70585.69, -39803.81, 55976.34, 76694.82, 47032.00),nrow = 3,ncol = 4,byrow = TRUE)

#Elevamos varMatriz a la potencia 65 y dividimos por Inf
varMatriz <- (varMatriz^65)/Inf
vM<-which(x=is.nan(x=varMatriz),arr.ind = TRUE)
vM

#Elevando varMatriz a la potencia 67
vM2 <- (varMatriz^67)

#Buscando los valores que son distintos de NaN y reemplazando por Inf
vM2[which(!is.na(vM2))]=Inf
vM2
#Comparamos
vM2[which(is.infinite(vM2))]


#Item c
f2 <- c(4.3,2.2,NULL,2.4,NaN,3.3,3.1,NULL,3.4,NA)

#Verdadero
length(f2)

#False
which(x=is.na(x=f2))

#Falso
is.null(x=f2)