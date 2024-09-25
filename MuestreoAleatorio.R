library(dplyr)
library(sampling)

# Muestreo Aleatorio Simple
set.seed(109)
#base
muestra_aleatoria <- slice_sample(.data = base, n = 8, replace = F )
muestra_aleatoria

# Muestreo Aleatorio Estratificado
set.seed(10)
muestra_est_np <- strata(data = base, stratanames = c("nivel_estudios"), size = c(3,5,3), method = "srswor"))