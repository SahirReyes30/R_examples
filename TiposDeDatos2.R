## VEctor
# Funcion c, combine
manzana <- c('rojo','verde',"amarillo")
print(manzana)

#lista
list1 <- list(c(2,3,4),21.3,sin)
print(list1)

#Matriz
M = matrix(c('a','a','b','c','b','a'), nrow=2, ncol=3, byrow= TRUE)
print(M)

# arreglo (array)
a = array(c('green','yellow','red','blue'), dim = c(3,3,2))
print(a)
print(a[1,1,1])
print(a[3,3,2])

#Factores
apple_colors = c('green','green','yellow','red','red','red','green')
factor_apple = factor(apple_colors)
print(factor_apple)
print(nlevels(factor_apple))

# DataFrames
BMI = data.frame(
  gender = c('male','male','female'),
  height = c(152,171.4,165),
  wieght = c(81,93,78),
  age = c(42,338,26)
)
print(BMI)




