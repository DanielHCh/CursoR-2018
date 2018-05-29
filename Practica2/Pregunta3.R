#Item a 

vec1<-c(2,1,1,3,2,1,0)
vec2<-c(3,8,2,2,0,0,0)

#Resultados
#True
if(vec1[1] + vec2[2]==10){cat("Imprime el resultado!")}

#True
if(vec1[1] && vec2[1] >=2){cat("Imprime el resultado!")}

#False
if(all((vec2-vec1)[c(2,6)]<7)){cat("Imprime el resultado!")}

#True
if(!is.na(vec2[3])){cat("Imprime el resultado!")}
