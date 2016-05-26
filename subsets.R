# Charger les données sur la qualité de l'air
library(datasets)
data(airquality)

# Il y a plusieurs moyens d'y arriver:
mean(airquality$Solar.R[airquality$Ozone > 31 & airquality$Temp > 90],na.rm=TRUE)

# Avec la fonction "subset" : pourquoi n'a-t-on pas besoin d'ajouter "na.rm=TRUE" 
# dans ce cas?
mean(subset(airquality,airquality$Ozone > 31 & airquality$Temp > 90)$Solar.R)

# Calculer le vecteur de filtrage pour le sous-ensemble 
filter.vector <- airquality[,"Ozone"] > 31 & airquality[,"Temp"] > 90

# Calculer le moyen de Solar.R pour le sous-ensemble 
mean(airquality[filter.vector, "Solar.R"], na.rm=T)

