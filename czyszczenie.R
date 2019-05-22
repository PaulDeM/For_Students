#Czyszczenie

setwd("F:/R_for_Students")
getwd()

data_for_cleaning<-read.csv("Dirty_Data.csv", sep = ';')

dim(data_for_cleaning)
class(data_for_cleaning)
names(data_for_cleaning)
str(data_for_cleaning)
summary(data_for_cleaning)

install.packages('stringr')
library('stringr')

v_ID<-toupper(str_pad(str_trim(data_for_cleaning$ID),6, side='right', pad='*' ))

data_ID_names<-data.frame(v_ID, data_for_cleaning[c(3:11)]) 
colnames(data_ID_names)<-c('ID','plec','wiek', 'wyksztalcenie', 'grupa', 'p1', 'p2', 'p3', 'p4', 'p5')

data_ID_names$wyksztalcenie<-str_replace(data_ID_names$wyksztalcenie, "podstawowe", "pdst")
data_ID_names$wyksztalcenie<-str_replace(data_ID_names$wyksztalcenie, "doktor", "phd")
data_ID_names$wyksztalcenie<-str_replace(data_ID_names$wyksztalcenie, "œrednie", "sred")
data_ID_names$wyksztalcenie<-str_replace(data_ID_names$wyksztalcenie, "magister", "mgr")
data_ID_names$wyksztalcenie<-str_replace(data_ID_names$wyksztalcenie, "licencjat/in¿ynier", "wyz")

summary(data_ID_names$wyksztalcenie)
data_ID_names$wyksztalcenie[data_ID_names$wyksztalcenie == ""] <- NA
data_ID_names$plec[data_ID_names$plec == ""] <- NA

data_ID_names$p1[data_ID_names$p1 > 7 | data_ID_names$p1 < 1] <- NA
data_ID_names$p2[data_ID_names$p2 > 7 | data_ID_names$p2 < 1] <- NA
data_ID_names$p3[data_ID_names$p3 > 7 | data_ID_names$p3 < 1] <- NA
data_ID_names$p4[data_ID_names$p4 > 7 | data_ID_names$p4 < 1] <- NA
data_ID_names$p5[data_ID_names$p5 > 7 | data_ID_names$p5 < 1] <- NA

data_ID_names$grupa[data_ID_names$grupa !=1 & data_ID_names$grupa !=2] <- NA

data_ID_names$duplicated<-duplicated(data_ID_names)


data_ID_names<-subset(data_ID_names, duplicated==FALSE)

dim(data_ID_names)

data_fin<-data_ID_names[c(1,2,round(3), 4:10)]
