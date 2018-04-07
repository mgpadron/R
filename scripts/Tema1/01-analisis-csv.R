auto <- read.csv("../data/Tema1/auto-mpg.csv", header = TRUE, sep =",")
names(auto)

auto_no_header <- read.csv("../data/Tema1/auto-mpg-noheader.csv", header = FALSE)
head(auto_no_header,4)

auto_custom_header <- read.csv("../data/Tema1/auto-mpg-noheader.csv", 
                               header = F, 
                               col.names = c("numero",
                                             "millas_por_galeaon",
                                             "cilindarada", 
                                             "desplazamiento",
                                             "cabllaos_De_potecnia",
                                             "peso", "acelaracion", 
                                             "año", "modelo")
                               )
head(auto_custom_header,2)
