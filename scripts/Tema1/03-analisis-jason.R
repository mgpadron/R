install.packages("jsonlite")
library(jsonlite)

data.1 <- fromJSON("../data/Tema1/students.json")
data.2 <- fromJSON("../data/Tema1/student-courses.json")


install.packages('curl')
library(curl)
url <- "https://finance.yahoo.com/webservice/v1/symbols/allcurrencies/quote?format=json"
currencies <- fromJSON(url)

currency.data <- currencies$list$resources$resource$fields

head(data.1,3)
data.1$Email


currency.data[1:5,1:2]
data.1[c(2,5,8),]
data.1[,c(2,5)]

head(data.2,3)
