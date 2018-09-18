library(jsonlite)
library(plyr)

dev <- toJSON(dev, pretty = TRUE)
stg <- toJSON(stg, pretty = TRUE)

library("readr")
write_lines(dev, "C:")
write_lines(stg, "C:")