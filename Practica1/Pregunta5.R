#Author: Daniel Alfredo Hidalgo Ch�vez
#c�digo: 20132097F

#Crea una y declara el cuadro donde se ubicar�n funciones a representar gr�ficamente
plot.new()

#Gr�ficamente se representa en una ventana los datos de temperatura vs presi�n del dataframe que contiene estos datos
plot.window(range(pressure$temperature),range(pressure$pressure))

#Dibuja un marco rectangular donde ir�n ubicados los datos de temperatura vs presi�n
box()

#Din�micamente crea un eje donde los n�meros est�n separados convenientemente dependiendo los datos ingresados por el dataframe para el eje X
axis(1)

#Din�micamente crea un eje donde los n�meros est�n separados convenientemente dependiendo los datos ingresados por el dataframe para el eje y 
axis(2)

#Dibuja los puntos que pertenecen a los datos de temperatura vs presi�n
points(pressure$temperature,pressure$pressure)

# Nombra al eje X con la palabra "temperatura"
mtext("temperatura",side = 1,line = 3)

#  Nombra al eje y con la palabra "temperatura"
mtext("presion",side = 2,line = 3)

# Escribe el t�tulo de la gr�fica que acabamos de declarar e imprimir
mtext("Presion de vapor de Mercurio\ncomo una funci�n de la Temperatura",side=3,line = 1,font = 2)

