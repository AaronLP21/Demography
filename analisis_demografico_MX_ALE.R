"
Analisis demografico de la poblacion adulta de Alemania, se exhibe la poblacion, las tasas de 
dependencia y sus piramides poblaciones.
@Author : Aaron Lopez Pedraza
@Version: 1.0
"

# Polacion ----------------------------------------------------------------
#Comparaciones de la población total de alemania y mexico
#hay que multiplicar esas cantidades por 

install.packages("ggplot2")
library(ggplot2)
setwd("C:/Users/Aaron/Desktop/2020-2/Pensiones/EXPO ALEMANIA")

datos<-read.csv("datos3.csv")

a<-c(128.932753,83.783945)#falta multiplicar por un millón

barplot(datos$poblacion,names.arg = datos$pais,col = c("orange","forestgreen"),
        main = "Población")

#la escala es 1:1,000,000

# Tasas de dependencia ----------------------------------------------------
#Comparaciones de la población total de alemania y mexico
#hay que multiplicar esas cantidades por 

b<-c(36.48580329,13.16815239)#ya son porcentajes

barplot(datos$tasa_dependencia,names.arg = datos$pais,col = c("orange","forestgreen"),
        main = "Tasas de dependencia")

# Piramide poblacional ----------------------------------------------------
#Pirámides de población de MEX y ALEM proyectadas al 2020
#hay que multiplicar esas cantidades por 10,000

install.packages("pyramid")
library(pyramid)

#edades<- c('0-9','10-19','20-29','30-39','40-49','50-59','60-64','65-69','70-74','75-79','80-84','85 y +')
pob_2020 <- read.csv("datos2.csv")

pyramid(pob_2020,Llab="Alemania",Rlab="México",Clab="Edades",
        Laxis=seq(0,690,len=6),Raxis=seq(0,1200,len=6),
        main='Pirámides de población proyectdas al 2020', Lcol = "orange", Rcol = "forestgreen")
