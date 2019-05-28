setwd("C:/Users/Pawe³/Desktop/R_for_Students")
getwd() #working directory
dir()
dir.create("nowy folder")
dir.exists("nowy folder")
dir.exists("kasdjsk")
setwd("./nowy folder")
getwd()
setwd("../")
getwd()
dir.create("./nowy folder/folderdalej")
dir.create("./nowy folder/folderdalej/folderjeszczedalej")
#komentarz po add w git'cie
#nastepny
# pierwsza linia
# druga linia
# trzecia linia
# komentarze wielowierszowe tworzymy przez shift+ctrl+c

#funkcje pomocy
help()
help('hist')
?hist
example(plot)
apropos('test')
help.search('normality test')

# probny wektor
Dana<-c(1,2,3,3,4,5,6,6,7,7,7)
hist(Dana, col='red')
plot(Dana, col='blue')

#pakiety
installed.packages()
install.packages('ggplot2')
library('ggplot2')

#dzialania matematyczne
1-1
1+1
1-1+4
2/2
3/3
3/2
3*3
3**3
3^2
sqrt(9)
16**(1/4)

#przypisanie
x=2
x<-21
x
y=3
x*y
27->x
x
x<-y<-35
x
y
assign('variable', 12)
variable
rm(variable)
variable

#typy danych
class(x)
y<-'Zmienna'
class(y)
f<-factor('Zmienna')
is.factor(f)
nchar(y)
nchar(1234)
v<-c(1,2,34)
nchar(v)
nazwaUczelni<-c('S', 'W', 'P', 'S')
nazwaUczelni_factor<-factor(nazwaUczelni)

TRUE
x<-TRUE
x
x<-FALSE
T
F
T<-12
T
TRUE<-12
is.logical(T)
is.logical(TRUE)
is.logical(FALSE)

1==2
1<2
1!=2
1<=2
2<=2
1>2
'ala'=='alicja'
'ala'=='ala'
'ala'>'alicja'
'ala'<'alicja'

TRUE*3
FALSE*3

is.logical(1==2)
is.logical(1==1)

#wektory
naszWektor<-c(1,2,3,4)
naszWektor
naszWektor<-c(1,2,3,4,'B')
naszWektor
naszWektor*3 #blad poniewaz typ character
naszWektor<-c(1,2,3,4)
naszWektor*3
wekotrZZakresu<-c(-8:102)
wekotrZZakresu
naszInnyWektror<-naszWektor^3
naszInnyWektror
ujemnyWektor<-c(-5:-1)
dodatniWektor<-c(1:5)
ujemnyWektor+dodatniWektor
dodatniWektor+c(1:2)
dodatniWektor/0

dodatniWektor
dodatniWektor>3
any(dodatniWektor<3)
all(dodatniWektor<3)

#wybor elementow zwektora
naszInnyWektror[2]
naszInnyWektror[2:3]
naszInnyWektror[c(1:3)]
naszInnyWektror[c(1,2,3)]
naszInnyWektror[1:3]
naszInnyWektror_po_zaminie<-naszInnyWektror[1:3]

#struktry danych

dlugo<-c(2,1,3,0,0,1,5)
rodzen<-c(2,2,1,0,1,2,10)
name<-c('Paul','Kasia','Kasia','Kasia','Misia','Kamil', 'Waldek')
maly<-c(2,1,3,NA,NA,1,5)

dane_o_nas<-data.frame(dlugo,rodzen,name, maly)

maly_z_null<-c(2,1,3,NULL,NULL,1,5)

mean(maly)
mean(maly, na.rm = TRUE)
mean(maly_z_null)

dane_o_nas

head(dane_o_nas)
head(dane_o_nas, n=3)
tail(dane_o_nas,n=3)

rownames(dane_o_nas)
colnames(dane_o_nas)
colnames(dane_o_nas)<-c('dlugopisy', 'rodzenstwo', 'imie', 'probny')
colnames(dane_o_nas)
names(dane_o_nas)
names(dane_o_nas)[2]
names(dane_o_nas)[3]=='imie'

#wywolanie kolumny
dane_o_nas$imie
dane_o_nas$imie<-as.character(dane_o_nas$imie)
dane_o_nas$imie

dane_o_nas[3,3]

dane_o_nas[,3]#kolumna
dane_o_nas[,'imie']
dane_o_nas[3,] #wiersz
dane_o_nas[,'imie',drop=FALSE]

#lista
lista_1<-list(naszInnyWektror,c(2:5))
lista_1[[1]]
lista_1[[2]]

lista_2<-list(lista_1,dane_o_nas)
lista_2[[2]]
lista_2[[1]]
lista_3<-list(naszInnyWektror,c(2:5),dane_o_nas)
lista_3[[2]][[3]]
lista_4<-list(lista_3,dane_o_nas)
names(lista_4)<-c('probna_lista', 'osoby_kurs')

lista_4$osoby_kurs$imie
lista_4$osoby_kurs[3]
dane_o_nas[3]
dane_o_nas$imie

lista_4[["probna_lista"]][[1]][[3]]
lista_4[[1]][[1]][[3]]

#macierze

macias<-matrix(1:10, nrow=5)
macias

macias<-matrix(1:11, nrow=5)

macias<-matrix(1:10, nrow=5)
macias

othermacias<-matrix(21:30,nrow = 2)
othermacias

macias*othermacias

macias*t(othermacias) # t - transpozycja

macias[3,2]

multiMacias<-macias*t(othermacias)
multiMacias[4,2]

name[8]<-'Ada'
name

siatka_sali<-matrix(name)

siatka_sali

Nowa_siatka<-matrix(siatka_sali, nrow=2)

Nowa_siatka

Nowa_siatka[2,3]

# tablice

tablica<-array(1:17, dim=c(2,3,4))
tablica

colnames(tablica)<-c('A','B','C')
tablica
rownames(tablica)<-c(1,2)
tablica

dimnames(tablica)[[3]]<-c('L1', 'L2', 'L3', 'L4')
tablica

tablica[,,'L4']
tablica[,,'L3']
tablica[2,'A','L3']


#Dane w R

library(MASS)
data()
data()

library(ggplot2)
data("diamonds")

head(lh)
tail(lh)

head(mpg)

mpg$year

boxplot(diamonds$price)
cor(diamonds$carat, diamonds$price)

#pobieranie plików

plikCSV<-read.csv('DaneBadanie.csv', stringsAsFactors = FALSE, dec = ',')

cor(plikCSV$p1, plikCSV$p2)

head(plikCSV)

summary(plikCSV)

plikCSV<-read.csv('DaneBadanie.csv', stringsAsFactors = TRUE, dec = ',')


summary(plikCSV)

#dopisac excel


#funkcje i petle
setwd('E:/R_for_Students')
getwd()

PierwszaFunkcja<-function()
{
  return("Oto pierwszy komunikat z pierwszej funkcji")
}

Porownanie<-function(zmienna)
{
  if(zmienna==1)
  {
    print("nie mozemy obliczyc poniewaz 1")
  } else if (zmienna>1 & zmienna<=10)
  {
    print("zmienna jest miedzy 2 a 10 tez nie obliczam")
  } else
  {
  return(zmienna*2)
  }
}

ifelse(plikCSV$wiek>30,'yes', 'O nie... :(')
plot(ifelse(plikCSV$p³eæ=="K",plikCSV$p1-1, plikCSV$p1*1))

Wykresy<-function(dane, ID, zmienna)
{
  if(length(ID)<30){
    print("zle badanie")
  } else if(length(ID)>=30 & length(ID)<60)
  {
    plot(zmienna)
  }else 
  {
   hist(zmienna)
  }
}

Wykresy(plikCSV, plikCSV$ID, plikCSV$p1)

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

#testy statystyczne i tabele
t.test(data_fin$p1~data_fin$grupa)
t.test(data_fin$p1, data_fin$p2)
t.test(data_fin$p1,mu=3.5)

cor(data_fin$p1, data_fin$p2, use='complete.obs')

cor(data_fin$p1, data_fin$p2, use='complete.obs', method = 'kendall')
cor(data_fin$p1, data_fin$p2, use='complete.obs', method = 'spearman')
cor(data_fin$p1, data_fin$p2, use='complete.obs', method = 'pearson')

#tabele krzyzowe
plec_t<-data_fin$plec
wyk_t<-data_fin$wyksztalcenie
tabela_plec_wyk<-table(plec_t,wyk_t)

tabela_plec_wyk

margin.table(tabela_plec_wyk,1)
margin.table(tabela_plec_wyk,2)

prop.table(tabela_plec_wyk)

round(prop.table(tabela_plec_wyk),2)

margin.table(tabela_plec_wyk,2)

#dzielnie na grupy

data_fin$grupy_3<-ifelse(data_fin$wyksztalcenie=='wyz',2,
                         ifelse(data_fin$wyksztalcenie=='mgr'|data_fin$wyksztalcenie=='phd', 3,1))

wynik_anovy<-aov(p1~grupy_3,data=data_fin)

wynik_anovy
summary(wynik_anovy)

reg<-lm(p1~p2,data_fin)
summary(reg)

