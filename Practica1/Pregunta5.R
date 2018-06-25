#Author: Daniel Alfredo Hidalgo Chávez
#código: 20132097F

#Crea una y declara el cuadro donde se ubicarán funciones a representar gráficamente
plot.new()

#Gráficamente se representa en una ventana los datos de temperatura vs presión del dataframe que contiene estos datos
plot.window(range(pressure$temperature),range(pressure$pressure))

#Dibuja un marco rectangular donde irán ubicados los datos de temperatura vs presión
box()

#Dinámicamente crea un eje donde los números están separados convenientemente dependiendo los datos ingresados por el dataframe para el eje X
axis(1)

#Dinámicamente crea un eje donde los números están separados convenientemente dependiendo los datos ingresados por el dataframe para el eje y 
axis(2)

#Dibuja los puntos que pertenecen a los datos de temperatura vs presión
points(pressure$temperature,pressure$pressure)

# Nombra al eje X con la palabra "temperatura"
mtext("temperatura",side = 1,line = 3)

#  Nombra al eje y con la palabra "temperatura"
mtext("presion",side = 2,line = 3)

# Escribe el título de la gráfica que acabamos de declarar e imprimir
mtext("Presion de vapor de Mercurio\ncomo una función de la Temperatura",side=3,line = 1,font = 2)

