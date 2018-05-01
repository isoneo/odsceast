#Requiring all necessary lib packages
list.of.packages <- c('caret', 'coefplot','DBI', 'dbplyr', 'doParallel', 'foreach', 
                      'ggthemes', 'glmnet', 'jsonlite', 'leaflet', 'odbc', 
                      'recipes', 'rmarkdown', 'rprojroot', 'RSQLite', 'rvest', 
                      'tidyverse', 'threejs', 'usethis', 'UsingR', 'xgboost', 'XML', 
                      'xml2')
new.packages <- list.of.packages[(!list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)#
lapply(list.of.packages, require, character.only  =TRUE)
rm(list.of.packages,new.packages)


#Requiring all necessary lib packages
list.of.packages <- c('RODBC','devtools')
new.packages <- list.of.packages[(!list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)#
lapply(list.of.packages, require, character.only  =TRUE)
rm(list.of.packages,new.packages)


if((!c("dbplyr") %in% installed.packages()[,"Package"]) == T){
    devtools::install_github("tidyverse/dbplyr")
}
if((!c("recipes") %in% installed.packages()[,"Package"]) == T){
    devtools::install_github("topepo/recipes")
}
if((!c("usethis") %in% installed.packages()[,"Package"]) == T){
    devtools::install_github("r-lib/usethis")
}


source('prep/DownloadData.r')
