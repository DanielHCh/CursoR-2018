#Author: Daniel Alfredo Hidalgo Ch�vez
#c�digo: 20132097F

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

#Elementos donde est� la cadena "smoothScatter"
find <- grap == "smoothScatter"

#72
which(find)
