library(tidyverse)
library(eph)


# EJERCICIO 1 ####

baset117 <- get_microdata(year = 2017,trimester = 1)

mis_variables <- c("ANO4","REGION","CH06","ESTADO")

basesita <- baset117[mis_variables]

basesita_100 <- baset117 [1:100,4] #¿Como se restringe la muestra a los 100 primeros casos? 

pruebas_serias <- sample(x=baset117,size=10000 ,replace=TRUE,prob=NULL)

# EJERCICIO 2 ####

variables_m30 <- c("CODUSU","NRO_HOGAR","COMPONENTE","AGLOMERADO","CH04","CH06","P21")

# base_m30 <- get_microdata(year = c(2015:2022),trimester= c(1:4),type="individual",vars = variables_m30) ¿porque no funciona?

base_2015 <- get_microdata(year = 2015,trimester= 1)

base_m30 <- base_2015 [variables_m30]

base_m30s <- subset(base_m30,CH06<30)

saveRDS(base_m30s,file = "base h30")


