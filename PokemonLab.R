library(xlsx
        )
setwd("HD")
setwd("Rtemp")
pkmn <- read.csv("Pokemon.csv")
head(pkmn)
tail(pkmn)
?duplicated
duplicated(pkmn$Name)
pkmn$pkmn_dupes <- duplicated(pkmn$Name)
head(pkmn)
pkmn <- pkmn[pkmn$pkmn_dupes == "FALSE",]
table(pkmn$Type)
summary(pkmn$Attack)
summary(pkmn[pkmn$Type == "POISON", ]$Attack)
highattack <- pkmn[order(-pkmn$Attack),] [1:6,]
#shows the top six highest rated Pokemon
highattack <- pkmn[order(-pkmn$Attack),][1:2,]
highdefense <- pkmn[order(-pkmn$Defense),][1:2,]
highspeed <- pkmn[order(-pkmn$Speed),][1:2,]
toppkmn <- rbind(highattack, highdefense, highspeed)
#shows the top two highest rated Pokemon for attack, defense, speed
toppkmn
psychic <- pkmn[pkmn$Type == "PSYCHIC",]
highattackpsychic <- psychic[order(-psychic$Attack),][1:2,]
highdefensepsychic <- psychic[order(-psychic$Defense),][1:2,]
highspeedpsychic <- psychic[order(-psychic$Speed),][1:2,]
toppsychic <- rbind(highattackpsychic, highdefensepsychic, highspeedpsychic)
toppsychic
#shows the top two highest rated Pokemon with "Psychic" criteria for attack, defense, speed
grass <- pkmn[pkmn$Type == "GRASS",]
slow <- grass[order(-grass$Speed),] [1:6,]
slow
# a) find GRASS types, b ) find 6 slowest, c) list them
minpok <- pkmn[which.min(pkmn$Total),]
# the minimum Total pokemon
medianpok <- pkmn[median(pkmn$Total),]
# median pokemon
# Best Pokemon--- see toppokmn

