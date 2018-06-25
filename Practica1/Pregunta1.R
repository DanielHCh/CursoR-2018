#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item A
#Existen 2 formas
#Primera
seq(5,-11, by=-0.3)
#El problema es que no llega a -11 propiamente

#De forma que es mejor usar arreglos ya que hace uso de los decimales y no perderemos el dato del -11
#Primero calculamos cuantos pasos necesitariamos para que recorriendo a 0.3 en cada dato lleguemos a -11
#En otras palabras de c(5,-11)*3, el resultado es de 15 a -33, ahora pasamos a multiplicar por -1/3 para así obtener de 5 a -11
c(-15:33)*-(1/3)

#################################################################################################################################
#Item B
c(33:-15)*-(1/3)
#O también
seq(-11,5, by=0.3)

#################################################################################################################################
#Item C
v1<-c(-1,3, -5,7, -9)
#Repetimos los valores 10 veces
v2<-rep(v1,each=10)
#Repetimos el vector
v3<-c(v2,v2)
#Ordenamos de mayor a menor
sort(v3,decreasing=TRUE)

#################################################################################################################################
#Item D
x<-c(6:12)
y<-c(5.3)
y<-rep(y,each=3)
num<--3
z<-seq(102,20, by=-9.111111)
Vtotal<-c(x,y,num,z)
Vtotal
length(Vtotal)
#El tamaño es 21
#Si fuese 21 y no 20 tendriamos
x<-c(6:12)
y<-c(5.3)
y<-rep(y,each=3)
num<--3
z<-seq(102,21, by=-9)
Vtotal<-c(x,y,num,z)
Vtotal
length(Vtotal)
sort(Vtotal,decreasing = FALSE)
