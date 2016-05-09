# Charger les données sur le naufrage du Titanic 
titanic <- read.csv('titanic.csv')

# Imprimer seulement les premiers rangs
head(titanic, 2)

# Imprimer seulement les derniers rangs
tail(titanic,2)

# Calculer le nombre total de survivants 
sum(titanic$survived)

# Calculer l'âge moyen de tous les passagers 
mean(titanic$age, na.rm=TRUE)

# Combien de passagers ont un âge inconnu? 
sum(is.na(titanic$age))

