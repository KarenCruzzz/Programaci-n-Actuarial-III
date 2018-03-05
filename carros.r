x <- data.frame(mtcars)
x
dput(mtcars,file ="~/GitHub/Programaci-n-Actuarial-III/y.R" )
CarrosKaren<- dget(file ="~/GitHub/Programaci-n-Actuarial-III/y.R")
CarrosKaren


# Lectura y escritura de datos

# dput y dget

# 1. Creo el objeto
y <- data.frame(a=1,b="a")
# 2. Estudio la manera en que se guardará
dput(y)
# 3. Lo guardo en mi disco duro

dput(y, file="~/GitHub/Programaci-n-Actuarial-III/y.R")
# 4. Genero un nuevo objeto a partir de la info guardada
y2 <- dget(file="~/GitHub/Programaci-n-Actuarial-III/y.R")