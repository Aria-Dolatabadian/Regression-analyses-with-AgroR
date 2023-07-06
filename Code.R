library(AgroR)

#Logistic regression

data <- read.csv("emerg.csv")
head(data)
with(data, logistic(time, resp,xlab="Time (days)",ylab="Emergence (%)"))
with(data, logistic(time, resp,npar="LL.4",xlab="Time (days)",ylab="Emergence (%)"))

#Linear regression graph

data <- read.csv("phao.csv")
head(data)
with(data, polynomial(dose,comp, grau = 2))

#Linear regression graph in double factorial

dose=rep(c(0,0,0,2,2,2,4,4,4,6,6,6),3)
resp=c(8,7,5,23,24,25,30,34,36,80,90,80,
12,14,15,23,24,25,50,54,56,80,90,40,
12,14,15,3,4,5,50,54,56,80,90,40)
trat=rep(c("A","B","C"),e=12)
polynomial2(dose, resp, trat, grau=c(1,2,3))

#Linear regression graph in double factorial with color graph

dose=rep(c(0,0,0,2,2,2,4,4,4,6,6,6),3)
resp=c(8,7,5,23,24,25,30,34,36,80,90,80,
12,14,15,23,24,25,50,54,56,80,90,40,
12,14,15,3,4,5,50,54,56,80,90,40)
trat=rep(c("A","B","C"),e=12)
polynomial2_color(dose, resp, trat, grau=c(1,2,3))
