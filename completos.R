setwd("C:/Users/Karen/Documents/specdata")
directorio="C:/Users/Karen/Documents/specdata"
completos<- function(directorio, id=1:332){
    y<-c()
    for(i in id){
        if (i<10){
            
            n�mero<-paste("00",i,sep = "")
            n�mero2<-paste(n�mero,"csv",sep = ".")
            x<- na.omit(read.csv(n�mero2))
            completo<-nrow(x)
            y<-c(y,completo)
        } else if(i>=10 && i<100 ){
            n�mero<-paste("0",i,sep = "")
            n�mero2<-paste(n�mero,"csv",sep = ".")
            x<- na.omit(read.csv(n�mero2))
            completo<-nrow(x)
            y<-c(y,completo)
        }else{
            
            n�mero2<-paste(i,"csv",sep = ".")
            x<- na.omit(read.csv(n�mero2))
            completo<-nrow(x)
            y<-c(y,completo)
        }
    }
    data.frame(y)
}
completos(directorio,1:20)