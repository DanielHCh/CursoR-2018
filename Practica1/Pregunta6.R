#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Item a
#Guardando los datos de los "quakes" 
qk <- datasets::quakes

#Separamos los datos donde mag es mayor o igual que 5
qkMag <- subset(qk,qk$mag >=5)

#Asignando mi espacio de trabajo
setwd("E:/Daniel H.Ch/DataR/") 

#Escribimos la tabla que de los datos guardados en qkMag en un archivo .txt
write.table(qkMag, file="q5.txt", row.names = F)

#Los datos de la tabla anterior la ubicamos en q5.dframe en una carpeta pertinente
q5.dframe<-read.table("E:/Daniel H.Ch/DataR/q5.txt")

#Instalación del paquete "car"
install.packages("car")

dc <- carData::Duncan
setwd("E:/Daniel H.Ch/DataR/") 

#Declaramos y nombramos un archivo png
png(filename = "Pregunta5cuadro.png")


#Item b
#Creamos cuadro y ventana
plot.new()
plot.window(range(dc$education),range(dc$income))
box()
axis(1)
axis(2)
points(dc$education[dc$prestige>80],pch=19,col="blue")
points(dc$education[dc$prestige<=80],pch=1,col="blue")
points(dc$income[dc$prestige>80],pch=19,col="green")
points(dc$income[dc$prestige<=80],pch=1,col="green")


mtext("education",side=1,line=3)
mtext("income",side=2,line= )
mtext("Education vs Income\n",side=3,line = 1,font = 2)
legend(60,79,title = "\nPrestige less than 80",text.font=3,legend=c("education","income"),col=c("blue", "green"),pch=c(1,1),cex=1)

#Dejamos de usar el archivo png
dev.off()

#Verificación de espacio de trabajo
getwd()

#Creamos lista donde tenemos los datos de los quakes, q5.dframe y Duncan
exer <- list(c(qk,q5.dframe,dc))

#Escribimos la tabla que de los datos guardados en exer en un archivo .txt
write.table(exer, file="Ejercicio_df.txt", sep = ",", row.names = F, col.names = F)

