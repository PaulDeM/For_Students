setwd("F:/R_for_Students")

summary(data_fin)

wynik_anovy<-aov(p4~grupy_3,data=data_fin)

wynik_anovy
summary(wynik_anovy)



m(data_fin$p4, na.rm = TRUE)



install.packages("ggplot2")
library(ggplot2)

head(data_fin)

data_fin<-subset(data_fin, !is.na(data_fin["p4"]))


ndata <- aggregate(data_fin["ID"], by=data_fin[c("grupy_3")], FUN=length)
ndata


names(ndata)[names(ndata)=="ID"] <- "N"
ndata

ndata <- ndata[order(ndata$grupy_3),]
ndata

ndata.ms <- aggregate(data_fin["p4"], by = data_fin[c("grupy_3")], FUN=mean, na.rm=TRUE)
ndata.ms


ndata.ms <- ndata.ms[order(ndata.ms$grupy_3),]
ndata.ms

mdata <- merge(ndata, ndata.ms)
names(mdata)[names(mdata)=="p4"] <- "m"
mdata

ndata.sd <- aggregate(data_fin["p4"],by = data_fin[c("grupy_3")], FUN=sd, na.rm=TRUE)
ndata.sd

names(ndata.sd)[names(ndata.sd)=="p4"] <- "sd"
ndata.sd

fdata <- merge(mdata, ndata.sd)
fdata

fdata$sem <- fdata$sd / sqrt(fdata$N)
fdata


str(fdata)

fdata$grupy_3<-as.factor(fdata$grupy_3)


ggplot(fdata, aes(x=grupy_3, y=m)) + geom_col(aes(fill=grupy_3), width = .7)+theme_classic()+ 
  geom_errorbar(aes(ymin=m-sem, ymax=m+sem), width=.05)+
  ylab("œrednia")+ xlab("grupa")+scale_fill_manual("grupa badawcza",values=c("1"='#D8BFD8',"2"='#DDA0DD',"3"='#EE82EE'))+ 
  scale_y_continuous(limits = c(0, 7), breaks = c(seq(0,7, by=0.5)))+geom_text(aes(label=round(m,1)), position=position_fill(vjust=3.5))

