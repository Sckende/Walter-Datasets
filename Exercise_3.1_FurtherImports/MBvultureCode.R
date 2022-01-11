library(move)
library(RCurl)
library(circular)
source('iden.r')
login <- movebankLogin(username = ID,
                       password = PWD)
getMovebankStudies(login)

ind.infos <- getMovebankAnimals(study = "Turkey vultures in North and South America (data from Dodge et al. 2014)",
                                login = login)

turkey <- getMovebankData(study = "Turkey vultures in North and South America (data from Dodge et al. 2014)",
                          login = login,
                          animalName = c("Argentina",
                                         "Butterball",
                                         "Morongo",
                                         "Prado",
                                         "Sarkis",
                                         "Domingo",
                                         "La Pampa"),
                          moveObject = TRUE)

n.locs(turkey)
# Argentina Butterball    Domingo   La.Pampa    Morongo      Prado     Sarkis 
#     4058       1275       3235       4032      19868      20967       8451 