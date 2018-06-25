#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item a
#Declaramos e inicializamos variables
minum <- 12
fact <- 1

#Caso inicial y particular
if(minum == 0 || minum == 1){
  fact
}else{
  while(minum >= 2){
    fact <- fact * minum
    minum <- minum - 1
  }
  fact
}

#Item b
unacadena <- "R fever"
index <- 1
ecount <- 0
resultado <- unacadena

#De cada cadena se extrae un caracter, si caracter es "e" o "E" sumamos 1 a ecount y si ecount es 2 extraemos la cadena hasta una posición anterior de la segunda "e" o "E"
while(ecount<2 && index<=nchar(unacadena)){
  caracter <- substr(unacadena, index, index)
  if("e" == caracter || "E" == caracter){
    ecount <- ecount + 1
    }
  if(ecount == 2){
    resultado <- substr(unacadena, 1, index - 1)
    }
  index <- index + 1
}
resultado