data <- read.csv("../data/Tema1/missing-data.csv",na.strings = "")
data$Income.mean <- ifelse(is.na(data$Income),
                           mean(data$Income,na.rm=TRUE),
                           data$Income
                           )
#x es un vector d<e datos wur pùfed contener NA
rand.impute <- function(x){
  missing <- is.na(x)
  n.missing <- sum(missing)
  x.obs <- x[!missing]
  imputed <- x
  imputed[missing] <- sample(x-obs,n.missing,replace = TRUE)
  return(imputed)
}
random.impute.data.frame <- function(dataframe, cols){
names <- names(dataframe)
for (col in cols){
  name <- paste(names[col],".imputed", sep = "")
  dataframe[name] = rand.impute(dataframe[,col])
}
dataframe
 
}
data <- read.csv("../data/Tema1/missing-data.csv",na.strings = "")
data <- random.impute.data.frame(data,c(1,2))
