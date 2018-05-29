#Exacto pues se muestran en consola
seq(from=10, to=8, length=5)
sort(decreasing=T, x=c(2,1,1,2,0.3,3,1.3))

#Parcial pues se transforma el outputde forma abreviada
which(matrix(c(T,F,T,T),2,2), a=T)

#Posicional debido a que, por descarte, no esta haciendo la labor ni de Parcial ni exacto
rep(1:2, 3)
which(matrix(c(T,F,T,T), 2, 2))

#Mixta ya que observamos data de forma explicita (Exacto) abreviada (Parcial)
array(8:1, dim=c(2,2,2)) 