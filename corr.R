setwd("C:/Users/Karen/Documents/specdata")
directorio="C:/Users/Karen/Documents/specdata"
corr <- function(directorio, horizonte = 0) {
    correlaciones<-c()
    for(i in id){
        if (i<10){
            
            n�mero<-paste("00",i,sep = "")
            n�mero2<-paste(n�mero,"csv",sep = ".")
            x<- na.omit(read.csv(n�mero2))
           
            completo<-nrow(x)
            if(completo>horizonte){
                # columna= 2
                # columna1=3
                columna<-data.frame(x[,2])
                columna1<-data.frame(x[,3])
                correlaci�n<-cor(columna,columna1)
                correlaciones<-c(max,correlaci�n)
            }
        } else if(i>=10 && i<100 ){
            n�mero<-paste("0",i,sep = "")
            n�mero2<-paste(n�mero,"csv",sep = ".")
            x<- na.omit(read.csv(n�mero2))
            
            completo<-nrow(x)
            if(completo>horizonte){
               # columna= 2
                #columna1=3
                columna<-data.frame(x[,2])
                columna1<-data.frame(x[,3])
                correlaci�n<-cor(columna,columna1)
                correlaciones<-c(max,correlaci�n)
        }else{
            
            n�mero2<-paste(i,"csv",sep = ".")
            x<- na.omit(read.csv(n�mero2))
           
            completo<-nrow(x)
            if(completo>horizonte){
                # columna= 2
                #    columna1=3
                columna<-data.frame(x[,2])
                columna1<-data.frame(x[,3])
                correlaci�n<-cor(columna,columna1)
                correlaciones<-c(max,correlaci�n)
        }
    }
  
        }
    }
    correlaciones
}
corr(directorio,0)