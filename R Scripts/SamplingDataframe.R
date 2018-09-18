## Se requiere que exista un DataFrame armado
## Se usaran las siguientes librerias

library(caret)
library(lattice)
library(ggplot2)


## Se decide que % de tamaño deberá ser el sample, para el ejemplo se usa el 15%
## luego este se dividirá entre testeo y entrenamiento (desarrollo y pruebas para DW)

smp_size <- floor(0.15 * nrow(dataframeJson))

## Se obtiene los valores para el sampling del dataframe original

samps <- sample(seq_len(nrow(dataframeJson)), size = smp_size, replace = TRUE)
samps2 <- sample(seq_len(nrow(dataframeJson)), size = smp_size, replace = TRUE)

## Con estas rows dividimos el archivo en 2, dev y stg (desarrollo y prueba)

dev <- dataframeJson[samps, ]
stg <- dataframeJson[samps2, ]

