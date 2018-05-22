rankingcompleto <- function(resultado, num = "mejor") { 
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
    
    estados<- sort(unique(tabla$State))
    lista<-list()

    for(estado in estados) {
        y <- tabla[tabla$State == estado, ]
        y[, columna] <- as.numeric(x=y[, columna])
        y<- y[complete.cases(y), ]

        if(num == "mejor") {
            resultado = 1
        }
        else if(num == "peor") {
            resultado = nrow(y)
       
        }
        else if(is.numeric(x=num)) {
        
            if(num < 1 || num > nrow(y)) {
                lista<- rbind(lista, list(NA, estado))
                print(estado)
                next
                
            }
            else resultado <- num
            
        }


        y <- y[order(y[,columna], y$Hospital.Name), ]

        
        final <- y[resultado, ]$Hospital.Name

        lista <- rbind(lista, list(final[1], estado))

    }
    
    lista<- as.data.frame(x=lista)
    lista
}
    
head(rankingcompleto("ataque",20),10)


