update.packages(checkBuilt=TRUE, ask = FALSE)
# set your working directory
setwd(M:/Geo_script)
download.file('http://rasta.r-forge.r-project.org/rasta.zip', destfile='rasta.zip')
install.packages('rasta.zip', 
                 repos = NULL, dependencies = TRUE)
install.packages("raster", dependencies=TRUE)
install.packages("bitops", dependencies=TRUE)
install.packages("ggplot2", dependencies=TRUE)
install.packages("spdep", dependencies=TRUE)
install.packages("randomForest", dependencies=TRUE)
install.packages("reshape", dependencies=TRUE)
install.packages("ggmap", dependencies=TRUE)
install.packages("spatstat", dependencies=TRUE)
library(rasta)
#################################################################################
####################
#### leap year script

library(rasta)
is.leap <- function (x){
                if (x%%400 == 0) {
              output <- TRUE
              }
            else if (x%%100 == 0){
              output <- FALSE
            }
          else if(x%%4 == 0){
            output <- TRUE 
          } 
          else{
            output <- FALSE
          }
     return(output)
}
is.leap(2000) ###### is TRUE
is.leap(2001) ####### Is TRUE
