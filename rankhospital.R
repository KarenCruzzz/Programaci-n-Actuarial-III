setwd(C:\Users\Karen\Documents\Nueva carpeta (2))

rankhospital <- function(estado, resultado, num = "best") { 
    tabla<-read.csv("outcome-of-care-measures.csv")

    
    if(resultado == "ataque") {
        columna <-11
    }
    else if(resultado == "falla") {
        columna <- 17
        
    }
    else if(resultado == "neumonía") {
        columna <-23
    }
    else {
        stop("resultado inválido")
    }
    
    tabla <- tabla[tabla$state==estado & tabla[columna]]
    tabla[columna]<-as.data.frame(sapply(tabla[columna], as.numeric))
    
    tabla[, columna] = as.numeric(tabla[, columna])
    x = tabla[nuevatabla[, 1] == estado, c(2, columna)]
    x = na.omit(x)
    resultado = nrow(x)
    y<-tabla[, columna]
    if(num== "mejor"){
        resultadooo<-which.min(y)
        
    }else if(num== "peor"){
        resultadooo<-which.max(y)
    }
    if (num > resultado) {
        return(NA)
    }

    tabla(resultadooo)
}
rankhospital("TX", "falla", 4)
    
