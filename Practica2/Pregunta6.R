#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item a
matlist<- list(matrix(c(T,F,T,T),2,2),
               matrix(c("a","c","b","z","p","q"),3,2),
               matrix(1:8,2,4))

matlist

for(i in 1:length(matlist)){
  matlist[[i]]<-t(matlist[[i]])
}
matlist

#Comparando usando lapply (de la familia apply)
mLApply <- matlist
lapply(mLApply,t)


#Item b
qux <- array(96:1,dim = c(4,4,2,3))

#Primer punto
apply(qux[,,2,],3, diag)

#Segundo punto
dimension <- apply(qux[4,,,],3,dim)
dimension
apply(dimension,1,sum)
