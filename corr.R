setwd("C:/Users/Karen/Documents/specdata")
directorio="C:/Users/Karen/Documents/specdata"
corr <- function(directorio, horizonte = 0) {
    correlaciones<-c()
    for(i in id){
        if (i<10){
            
            número<-paste("00",i,sep = "")
            número2<-paste(número,"csv",sep = ".")
            x<- na.omit(read.csv(número2))
           
            completo<-nrow(x)
            if(completo>horizonte){
                # columna= 2
                # columna1=3
                columna<-data.frame(x[,2])
                columna1<-data.frame(x[,3])
                correlación<-cor(columna,columna1)
                correlaciones<-c(max,correlación)
            }
        } else if(i>=10 && i<100 ){
            número<-paste("0",i,sep = "")
            número2<-paste(número,"csv",sep = ".")
            x<- na.omit(read.csv(número2))
            
            completo<-nrow(x)
            if(completo>horizonte){
               # columna= 2
                #columna1=3
                columna<-data.frame(x[,2])
                columna1<-data.frame(x[,3])
                correlación<-cor(columna,columna1)
                correlaciones<-c(max,correlación)
        }else{
            
            número2<-paste(i,"csv",sep = ".")
            x<- na.omit(read.csv(número2))
           
            completo<-nrow(x)
            if(completo>horizonte){
                # columna= 2
                #    columna1=3
                columna<-data.frame(x[,2])
                columna1<-data.frame(x[,3])
                correlación<-cor(columna,columna1)
                correlaciones<-c(max,correlación)
        }
    }
  
        }
    }
    correlaciones
}
corr(directorio,0)