# Charger les données sur la qualité de l'air
library(datasets)
data(airquality)

# Calculer le vecteur de filtrage pour le sous-ensemble 
filter.vector <- airquality[,"Ozone"] > 31 & airquality[,"Temp"] > 90

# Calculer le moyen de Solar.R pour le sous-ensemble 
mean(airquality[filter.vector, "Solar.R"], na.rm=T)

