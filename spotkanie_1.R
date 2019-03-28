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
