#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item A
#Un vector unidimensional que fue repartido en las posiciones de 4 matrices de 3x3
f1 <- array(data=1:36,dim=c(3,3,4))
f1

#Todos los elementos de las matrices anteriores fueron trasladadas a un vector unidimensional
bar <- as.vector(f1)
bar

#Los elementos del vector unidimensional cambiaron de tipo de variable, de enteros a caracteres
baz <- as.character(bar)
baz

#Los elementos fueron ordenados por factores
qux <- as.factor(baz)
qux

#Los elementos del vector bar han sido sumados por -0.1 y 0.1 intercaladamente
quux <- bar+c(-0.1,0.1)
quux


#Item B
is.numeric(f1) + is.integer(f1)
is.numeric(bar) + is.integer(bar)
is.numeric(baz) + is.integer(baz)
is.numeric(qux) + is.integer(qux)
is.numeric(quux) + is.integer(quux)

result <- c(is.numeric(f1) + is.integer(f1),is.numeric(bar) + is.integer(bar),is.numeric(baz) + is.integer(baz),is.numeric(qux) + is.integer(qux),is.numeric(quux) + is.integer(quux))


#Item C
#Declaramos la matriz A
A <- matrix(c(34,23,33,42,41,0,1,1,0,0,1,2,NA,1,2),nrow = 5,ncol = 3)

#Conversión a un dataframe
A <- data.frame(A)

#Nombramos columnas pertinentemente para luego dar pase a la coerciones
colnames(A) <- c("Value","Bool","Factor")
A$Bool <- as.logical(A$Bool)
A$Factor <- as.logical.factor(A$Factor)

#Mostramos como quedó finalmente la matriz
A