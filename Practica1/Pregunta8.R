#Item a
#Separando espacio de trabajo
setwd("E:/Daniel H.Ch/DataR/") 

Persona <- c("Stan","Francine","Steve","Roger","Hayley","Klaus")
Sexo <- factor(c("M","F","M","M","F","M"))
Puntuacion <- factor(c("Alto","Medio","Bajo","Alto","Medio","Medio"))

#A data frame
dframe <- data.frame(Persona,Sexo,Puntuacion)

#Item b
#Edades de las personas (en orden)
edad<- c(41,41,15,160,21,60)

#Agregamos la columna edades al dataframe
dframe <- cbind(dframe,edad)
dframe

#Item c
misdatos <- data.frame(Persona=c("Peter","Louis","Meg","Chris","Stewie"),Sexo=factor(c("M","F","F","M","M")),edad = c(42,40,17,14,1),Puntuacion=c("","","","",""))
dframe <- rbind(dframe,misdatos)
dframe

#Item D
misdatos$edad.mon <- misdatos$edad*12
misdatos
misdatos2 <- misdatos
misdatos2$edad.mon = NULL
misdatos2

#Item E
dframe <- rbind(dframe,misdatos2)
dframe
