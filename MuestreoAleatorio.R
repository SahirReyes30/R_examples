library(dplyr)
library(sampling)

# Muestreo Aleatorio Simple
set.seed(109)
#base
muestra_aleatoria <- slice_sample(.data = base, n = 8, replace = F )
muestra_aleatoria

# Muestreo Aleatorio Estratificado no proporcional
set.seed(10)
muestra_est_np <- strata(data = base, stratanames = c("nivel_estudios"), size = c(3,5,4), method = "srswor") # muestreo aleatorio simple sin remplazo
muestra_est_np
data.frame(table(base$nivel_estudios))

# Muestreo Aleatorio Estratificado proporcional
set.seed(10)
nrow(base)
data.frame(table(base$nivel_estudios))
n_superior <- sum(with(base, nivel_estudios == "Superior"))/nrow(base)
n_basico <- sum(with(base, nivel_estudios == "Básico"))/nrow(base)
n_medio_superior <- sum(with(base, nivel_estudios == "Medio Superior"))/nrow(base)
muestra_est_p <- strata(data = base, stratanames = c("nivel_estudios"), size = c(round(12*n_superior),round(12*n_basico), round(12*n_medio_superior)), method = "srswor") #srswor muestreo aleatorio simple sin remplazo
muestra_est_p
data.frame(table(muestra_est_p$nivel_estudios))

# Muestreo por Conglomerados
data.frame(table(base_trabajadores$sucursal))
set.seed(10)
cluster(data= base_trabajadores, clustername = "sucursal", size = 3, method = "srswor", description = T)
