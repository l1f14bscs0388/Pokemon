read.csv("C:/Users/Administrator/Desktop/pokemon.csv")->pokemon
View(pokemon)
nrow(pokemon)
ncol(pokemon)
table(pokemon$is_legendary)
table(pokemon$generation)
table(pokemon$type1)

min(pokemon$hp)
max(pokemon$hp)


min(pokemon$speed)
max(pokemon$speed)

is.na(pokemon$abilities)
sum(is.na(pokemon$abilities))


colnames(pokemon)
colnames(pokemon)=="type1"
colnames(pokemon)[colnames(pokemon)=='type1']<-"primary_type"
View(pokemon)





colnames(pokemon)[colnames(pokemon)=='type2']<-"secondary_type"

colnames(pokemon)[colnames(pokemon)=='name']<-"pokemon_name"

library(dplyr)

pokemon %>% filter(pokemon$primary_type=="grass")->grass_pokemon

min(grass_pokemon$speed)

mean(grass_pokemon$sp_attack)
mean(grass_pokemon$sp_defense)

library(ggplot2)

ggplot(data=grass_pokemon,aes(x=hp))+geom_histogram()

ggplot(data=grass_pokemon,aes(x=hp))+geom_histogram(fill="green"
                                                    )


ggplot(data = grass_pokemon,aes(x=is_legendary))+geom_histogram(fill="green")





ggplot(data=grass_pokemon,aes(x=height_m))+geom_histogram()

ggplot(data=grass_pokemon,aes(x=weight_kg))+geom_histogram(fill="blue")


pokemon %>% filter(primary_type=="fire")->fire_pokemon

min(fire_pokemon$speed)
max(fire_pokemon$speed)

ggplot(data=fire_pokemon,aes(x=generation,fill=as.factor(generation)))+geom_bar()



ggplot(data=fire_pokemon,aes(x=sp_attack,y=sp_defense))+geom_point()

ggplot(data=fire_pokemon,aes(x=sp_attack))+geom_histogram()





