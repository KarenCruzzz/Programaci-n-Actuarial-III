if(!dir.exists("data")){dir.create("data")}
url<-"https://data.baltimorecity.gov/api/views/k5ryef3g/rows.csv?accessType=DOWNLOAD"
download.file(url,"./data/restaurantes.csv")
data<-read.csv("./data/restaurantescsv")