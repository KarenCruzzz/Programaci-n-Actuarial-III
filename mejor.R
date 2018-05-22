setwd(C:\Users\Karen\Documents\Nueva carpeta (2))

mejora<- function(estado, resultado){
    tabla<-read.csv("outcome-of-care-measures.csv")
    
        nuevatabla<-data.frame(tabla$State, tabla$Hospital.Name, as.numeric(tabla$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack), as.numeric(tabla$Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure), as.numeric(tabla$Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia))
        
    #    if(!estado %in% names(nuevatabla$tabla.State)){
     #       stop("estado inválido")
      #  }
        
 
        if(resultado == "ataque") {
            columna <- 3
            
            nuevatabla2<- subset(nuevatabla, nuevatabla$tabla.State == estado)      
           
            for (i in 1:length(nuevatabla2)){
                minimo <- nuevatabla2[i] == min((nuevatabla2[,3]), na.rm = TRUE) 
            }
            resultado <- data.frame(nuevatabla2[,2],minimo)
          
        }
        else if(resultado == "falla") {
            columna <- 4
            nuevatabla2<- subset(nuevatabla, nuevatabla$tabla.State == estado)      
            for (i in 1:length(nuevatabla2)){
                minimo <- nuevatabla2[i] == min((nuevatabla2[,4]), na.rm = TRUE) 
            }
            resultado <- data.frame(nuevatabla2[,2],minimo)
          
        }
        else if(resultado == "neumonía") {
            columna <- 5
            nuevatabla2<- subset(nuevatabla, nuevatabla$tabla.State == estado)      
            for (i in 1:length(nuevatabla2)){
                minimo <- nuevatabla2[i] == min((nuevatabla2[,5]), na.rm = TRUE) 
            }
            resultado <- data.frame(nuevatabla2[,2],minimo)

        }
        else {
            stop("resultado inválido")
        }
        
    
      #  nuevatabla2<- subset(nuevatabla, tabla$State == estado)      
       # hname <- c()
#        for (i in 1:length(nuevatabla2)){
 #           minimo <- nuevatabla2[i] == min((nuevatabla2[,columna]), na.rm = TRUE) 
  #      }
   
        ntab <- nuevatabla[nuevatabla$tabla.State == estado, ]
        ntab[, columna] <- as.numeric(x=ntab[, columna])
        ntab <- ntab[complete.cases(ntab), ]
        final <- ntab[(ntab[, columna] == min(ntab[, columna])), ]$tabla.Hospital.Name
        sort(final)[1]    
    
        
}

mejora("MD", "neumonía")

nuevatabla