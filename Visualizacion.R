
setwd("C:/Users/aspr/Desktop/da/R_Examples")
set.seed(2018)
x1<-rnorm(100, 10,2)
y1<-rnorm(100, 5.5)
x2<-rnorm(100, 10,1)
y2<-rnorm(100, 3.5)*x1


#histograma
hist(x1)
hist(x1, main = "Histograma de x", ylab = "Frecuencia")
hist(rnorm(1000, 20, 3))
hist(rpois(100,2.5))
hist(rbinom(100,20,.25))
hist(rgamma(100,20))
hist(rbeta(100,3,1))
hist(rweibull(100,1))
?Distributions

##steam and leaf
stem(x1)

print(x1)
summary(x1)

stem(x2)
hist(x2)


#boxplot
boxplot(x1,main="Boxplot de x1",ylab="x1")

boxplot(x1,x2, names=c("x1", "x2"),
        ylab="Puntos", xlab="Grupos",
        main="Figura 1. GRaficas de caja para la variable x")

#barplot
?barplot
z<-rpois(10,3)
barplot(z)

data()

VADeaths

mp <- barplot(VADeaths) # default
tot <- colMeans(VADeaths)
print(tot)
text(mp, tot + 3, format(tot), xpd = TRUE, col = "blue")
barplot(VADeaths, beside = TRUE,
        col = c("lightblue", "mistyrose", "lightcyan",
                "lavender", "cornsilk"),
        , ylim = c(0, 80))
title(main = "Death Rates in Virginia", font.main = 4)

#Graficas de funciones matematicas
z <- seq(-3,3,0.01)
?dnorm
fdp<-dnorm(z)
plot(z,fdp,type="l")
polygon(c(z[z<=-1],-1),c(fdp[z<=-1],fdp[z==-3]),col="red")
?polygon

# fdp <-funcion densidad de probabilidad
# Se crea una funcion que grafique el area bajo la curva normal estandar

area<-function(x=0){
  z<-seq(-3,3,0.01)
  fdp<-dnorm(z)
  plot(z,fdp,type="l")
  polygon(c(z[z<=x],x),c(fdp[z<=x],fdp[z==-3]),col="red")
}

area()
area(2)
area(-2)         


#Funcion de makeham
X<-1:100
A<-.00007
B<-.0005
C<-10^.04
mu<-A+B*C^X
plot(X,mu,type="l")
makeham<-function(A,B,C){
  plot(X,A+B*C^X,type="l",main="Funcion de Makeham")
}
makeham(.00007,.0005,1.09)
makeham(A,B,C)


