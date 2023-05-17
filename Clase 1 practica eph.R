library(tidyverse)
library(eph)

# EJERCICIO 1 ####

baset117 <- get_microdata(year = 2017,trimester = 1)

mis_variables <- c("ANO4","REGION","CH06","ESTADO")

basesita <- baset117[mis_variables]

basesita_100 #¿Como se restringe la muestra a los 100 primeros casos?

pruebas_serias <- sample(basesita,size =10000 ,replace=FALSE,prob=NULL)

