clientes <- c("juan Gabriel","Ricardo","Pedro")
fechas <- as.Date(c("2017-12-27","2017-11-1","2018-1-1"))
pago <- c(315,192.55,40.15)
pedidos <- data.frame(clientes,fechas,pago)

clientes_vip <- c("Juan Gabriel","Ricardo")

save(pedidos,clientes_vip, file = "../data/Tema1/pedidos.Rdata")
saveRDS(pedidos, file="../data/Tema1/pedidos.rds")

remove(pedidos)

load("../data/Tema1/pedidos.Rdata")
orders <- readRDS("../data/Tema1/pedidos.rds")

data(iris)
data (cars)
save.image(file="../data/Tema1/alldata.Rdata")

primes <- c(2,3,5,7,11,13)
pow2 <- c(2,4,8,16,32,64,128)
save(list = c("primes","pow2"), file = "../data/Tema1/primes_and_pow2.Rdata")



attach("../data/Tema1/primes_and_pow2.Rdata")

data()

