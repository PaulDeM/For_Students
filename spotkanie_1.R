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

