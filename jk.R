

setwd("C:/Users/Karen/Documents/specdata")
directorio="C:/Users/Karen/Documents/specdata"
mediacontaminante<- function(directorio, contaminante, id=1:332){
    y<-0
    for(i in id){
        if (i<10){
            
        número<-paste("00",i,sep = "")
        número2<-paste(número,"csv",sep = ".")
        x<- read.csv(número2)
        if (contaminante== "sulfate") { 
            columna= 2
        } else if(contaminante == "nitrate"){
            columna=3
        }
        #promedio<-colMeans(x[,columna],na.rm = TRUE)
        promedio<-mean(x[,columna],na.rm=TRUE)
        y<-y+promedio
        } else if(i>=10 && i<100 ){
            número<-paste("0",i,sep = "")
            número2<-paste(número,"csv",sep = ".")
            x<- read.csv(número2)
            if (contaminante== "sulfate") { 
                columna= 2
            } else if(contaminante == "nitrate"){
                columna=3
            }
            #promedio<-colMeans(x[,columna],na.rm = TRUE)
            promedio<-mean(x[,columna],na.rm=TRUE)
            y<-y+promedio
        }else{
            
            número2<-paste(i,"csv",sep = ".")
            x<- read.csv(número2)
            if (contaminante== "sulfate") { 
                columna= 2
            } else if(contaminante == "nitrate"){
                columna=3
            }
            #promedio<-colMeans(x[,columna],na.rm = TRUE)
            promedio<-mean(x[,columna],na.rm=TRUE)
            y<-y+promedio
    }
    }
    promedio
}
    mediacontaminante(directorio,"sulfate",200)

