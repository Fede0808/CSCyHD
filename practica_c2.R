library(eph)
library(tidyverse)

eph_3t2022 <-  eph::get_microdata(year = 2022,trimester = 3)

tres_nombres <- eph_3t2022 %>% 
  select(REGION,CH03,ESTADO)  

tres_columnas <- eph_3t2022 %>% 
  select(1:3)

practica_grupal <- eph_3t2022 %>% 
  select(AGLOMERADO,CH06) %>% 
  filter(AGLOMERADO %in% c(93,17) & CH06>17)
