data <- read.csv("../data/Tema1/missing-data.csv", na.strings = "")

data.cleaned <- na.omit(data)
is.na(data[4,2])
is.na(data[4,1])
is.na(data$Income)
