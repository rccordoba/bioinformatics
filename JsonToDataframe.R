## Librerias necesarias jsonlite y plyr para tomar los datos del Json en R

library(jsonlite)
library(plyr)
json_file<- "C:/test.json"

## Escribirlo en un dataframe

dataframeJson <- stream_in(file(json_file))