# Ejemplo regresion lineal

# eq general para regresion lineal y = ax+b
# y variable dependiente o respuesta
# x vaariable independiente o predictora
# a,b constantes llamados coeficientes

# valores altura en cm
x <- c(158,170,142,182,127,130,181,166,157,134,175)

# valores peso en kg
y <- c(65,79,58,91,45,59,77,73,60,51,90)


# Grado de correlacion de las variables "x" y "y"
correlation <- cor(x,y)

# Matriz de correlacion
symnum(correlation)

## funcion lm(formula, data) (linear model)
# formula representa la relacion entre las variables
# data  vector al cual se le aplicara la formula

# Aplicamos la formula
relacion <- lm(y ~ x)
print(summary(relacion))

# usamos la funcion predict() para realizar la inferencia
# predict(objeto, newdata)
# objeto: es la formula o modelo creado por la funcion lm()
# newdata: es el vector que contenga los nuevos valores

newdata <- data.frame(x = 150) 
resultado <- predict(relacion, newdata)
print(resultado)

# visualizamos nuestro modelo en una grafica
png(file = "regresion_lineal.png")
plot(x, y, col = "red", main = "Regresion Lineal",sub="Correlacion de peso y altura", 
     abline(relacion), cex = 1.3 , pch = 16,
     xlab = "Altura (cm)", ylab = "Peso (kg)")
dev.off()




# Guardamos la grafica # agregar el valor de resultado a la grafica de color azul
png(file = "regresion_lineal_con_resultado.png")
plot(x, y, col = "red", main = "Regresion Lineal",sub="Correlacion de peso y altura", 
     abline(relacion), cex = 1.3 , pch = 16,
     xlab = "Altura (cm)", ylab = "Peso (kg)")
points(150, resultado, col = "blue", pch = 16, cex = 1.3)
dev.off()



