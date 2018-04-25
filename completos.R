setwd("C:/Users/Karen/Documents/specdata")
directorio="C:/Users/Karen/Documents/specdata"
completos<- function(directorio, id=1:332){
    y<-c()
    for(i in id){
        if (i<10){
            
            número<-paste("00",i,sep = "")
            número2<-paste(número,"csv",sep = ".")
            x<- na.omit(read.csv(número2))
            completo<-nrow(x)
            y<-c(y,completo)
        } else if(i>=10 && i<100 ){
            número<-paste("0",i,sep = "")
            número2<-paste(número,"csv",sep = ".")
            x<- na.omit(read.csv(número2))
            completo<-nrow(x)
            y<-c(y,completo)
        }else{
            
            número2<-paste(i,"csv",sep = ".")
            x<- na.omit(read.csv(número2))
            completo<-nrow(x)
            y<-c(y,completo)
        }
    }
    data.frame(y)
}
completos(directorio,1:20)