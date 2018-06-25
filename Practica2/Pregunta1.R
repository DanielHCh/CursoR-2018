#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item a
elementos<-ls("package:methods",all.names = TRUE)
elementos[1:20]

#385 elementos.
length(elementos)

#Item b
#Entorno: enviroment
environment(read.table)
environment(data)
environment(matrix)
environment(jpeg)

#Item
grap <- ls("package:graphics",all.names = TRUE)

#Elementos donde está la cadena "smoothScatter"
find <- grap == "smoothScatter"

#72
which(find)
