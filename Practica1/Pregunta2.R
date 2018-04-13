#Item A
x <- matrix(c(4.3,3.1,8.2,8.2,3.2,0.9,1.6,6.5),nrow = 4, ncol = 2)
x

#Item B
#Visualizamos las 3 primeras filas
x[c(1,2,3),]
#Obtenemos la dimensión de esta nueva matriz
dim(x[c(1,2,3),])

#Item C
#Guardamos los valores de la segunda columna
y <- x[,2]
#Ordenamos los valores
y <- sort(y,decreasing = FALSE)
#Sobreescribimos los valores de la segunda columna de la matriz original
x[,2] <- y
x

#Item D
x[c(2,3,4),1]

#Item E
z <- x[c(3,4),c(1,2)]

#Item F
x[c(1,4),c(1,2)] <- z*(-1/2)

#Item G
#Usamos la libreria matlib
A <- matrix(c(2,0,0,0,0,3,0,0,0,0,5,0,0,0,0,-1),nrow=4,ncol=4)
dim(inv(A)*(A-diag(4)))