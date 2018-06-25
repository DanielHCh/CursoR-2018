#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Hombres=12, Mujeres=8 | Individiuos mujeres indetificadas: 1,5,7,12,14,16 | Laboristas: 1,4,12,15,16,19 | Maoríes: 0 | Verdes: 6,9,11 | OTROS: 10,20
#Creamos vector
gob <- matrix(c("Sexo","Partido"),nrow=21,ncol = 2, ordered(TRUE))
gob[c(2:21),c(1,2)] <- ""

#Item A
gob[c(2:21),1] <- "M"
gob[c(2:21),2] <- "Nacionalista"
gob[2,1] <- "F"
gob[c(6:8),1] <- "F"
gob[13,1] <- "F"
gob[c(15:17),1] <- "F"
gob[2,2] <- "Laborista"
gob[5,2] <- "Laborista"
gob[13,2] <- "Laborista"
gob[16,2] <- "Laborista"
gob[17,2] <- "Laborista"
gob[20,2] <- "Laborista"
gob[7,2] <- "Verdes"
gob[10,2] <- "Verdes"
gob[12,2] <- "Verdes"
gob[11,2] <- "OTROS"
gob[21,2] <- "OTROS"

#Item B
#No pues como han sido designadas las ubicaciones usan el index de la matriz, si usamos orderered = TRUE perderá la relación index - sexo - partido

#Item C
pos <- which(gob == "M")
gob[pos,2]

pos <- which(gob == "Nacionalista", arr.ind = TRUE)
gob[pos[c(1:9),1],1]

#Item D
gob2 <- matrix(c("Sexo","Partido"),nrow=27,ncol = 2, ordered(TRUE))
gob2[c(2:27),c(1,2)] <- ""
gob2[c(2:21),c(1,2)] <- gob[c(2:21),c(1,2)]
gob2[c(22:27),2] <- c("Nacionalista","Maori","Maori","Laborista","Verdes","Laborista")
gob2[c(22:27),1] <- c("M","M","F","F","F","M")
confianza <- c(93, 55, 29, 100, 52, 84, 56, 0, 33, 52, 35, 53, 55, 46, 40, 56, 45, 64, 31, 10, 29, 40, 95, 18, 61)
length(confianza)
#Hay 25, no es posible proceder con la pregunta