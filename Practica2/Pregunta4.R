#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

loopvec1 <- 5:7
loopvec2 <- 9:6
mat1 <- matrix(NA, nrow = length(loopvec1), ncol = length(loopvec2))
mat1

#Item a
mul <- function(A,B,mat1){
  i<-1
  for(j in 1:length(B)){
    mat1[i,j] <- A[i]*B[j]
    mat1[i+1,j] <- A[i+1]*B[j]
    mat1[i+2,j] <- A[i+2]*B[j]
  }
  return(mat1)
}
mul(loopvec1,loopvec2,mat1)


#Item b
nombres <- c("Peter","Homer","Lois","Stewie","Maggie","Bart")

for(i in 1:length(nombres)){
  nombre <- nombres[i]
  cat(switch(EXPR=nombre,Homer=12,Marge=34,Bart=56,Lisa=78,Maggie=90,NA)," ")
}
#NOTA: Dependiendo la coincidencia (match), relacionará número con nombre


#Item c
unalista <- list(aa=c(3,4,1),bb = matrix(1:4,2,2),
                 cc=matrix(c(T,T,F,T,F,F),3,2),dd="cadena aqui",
                 ee=list(c("hola","tu"),matrix(c("hola","there"))),
                 ff=matrix(c("red","green","blue","yellow")))

#A una función aumentando indices
#Primer punto
listFunc <- function(unalista){
  #Indice
  count<-0
  for(i in 1:length(unalista)){
    if(is.matrix(unalista[[i]])){count=count+1}
    #Lista anidada
    if(is.list(unalista[[i]])){
      for(j in 1:length(unalista[[i]])){
        if(is.matrix(unalista[[i]][[j]])) count=count+1
      }
    }
  }
  return(count)
}

listFunc(unalista)

#Segundo punto
unalista <- list("salio algo raro",as.vector(matrix(1:6,3,2)))
listFunc(unalista)

#Tercer punto
unalista <- list(list(1,2,3),list(c(3,2),2),list(c(1,2),matrix(c(1,2))),rbind(1:10,100:91))
listFunc(unalista)
