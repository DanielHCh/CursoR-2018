#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item a
#Declaramos e inicializamos el tamaño de la muestra
S <- 9 

#Muestras
Info <- sample(c("+", "-"), size = S, replace = TRUE)
A <- sample(c("+", "-", "?"), size = S, replace = TRUE)

tam <- length(A)
#Caracteres válidos
B <- 0

if(tam >= 1 || tam <= 10){
  for(i in 1:tam){
    caracter <- A[i]
    if(caracter != "?")
      B <- B + 1
  }
  p <- B/S
}
print(paste("Probabilidad: ", format(round(p,9), nsmall=9)))


#Item b
suma_dado <- c(0,0)

for(i in 1:2){
  D1 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  D2 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  D3 <- sample(1:6, 1, replace = TRUE, prob = NULL)

  suma_dado[i] <- D1 + D2 + D3
}

#Vilma
B <- suma_dado[1]
#Esther
C <- suma_dado[2]

#Casos favorables
D <- 0

# vector de frecuencias de lanzamiento de 3 dados
X <- c(NA, NA, 3, 7, 11, 9, 2, 12, 18, 20, 4, 9, 6, 25, 3, 10, 14, 19)

for(i in max(B,C):length(X))
  D <- D + X[i]

#Cantidad de resultados posibles
S <- 6^3

P <- D/S
P
paste(D,"/",S)

#Para la suma de 3 dados

# Sea X una variable aleatoria de lanzar 3 dados y calcula la suma
X <- c(NA, NA, rep(0, 16)) # vector vacío que almacenará la frecuencia de cada lanzamiento
total <- 0
flag <- 0

while(total != 216){

  D1 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  D2 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  D3 <- sample(1:6, 1, replace = TRUE, prob = NULL)
  
  if(total == 0){
    lista_ternas <- list(c(D1, D2, D3))
  }else{
#Se verifica que no hayan repeticiones en las ternas, si hay no se considera
    for(i in 1:length(lista_ternas))
      if(all(lista_ternas[[i]] == c(D1,D2,D3))){ 
        flag <- 1
        break
      }
  }
  if(flag == 0){
    lista_ternas <- c(lista_ternas, list(c(D1, D2, D3)))
    suma_dado <- D1 + D2 + D3
    for(i in 3:18)
      if(suma_dado == i){
        X[i] <- X[i] + 1
        total <- total + 1
        break
      }
  }else{
    flag <- 0
  }
}

#Imprimimos las frecuencias de lanzamiento de 3 dados
for(i in 3:18){
  print(paste(i, "= ", X[i]))
}

sum(X[3:18])
