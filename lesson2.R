?help(raster)
rm(list= ls())
ls()
a <- 1
a
class(a)
getwd()
setwd("M:/Geo_script")
getwd()## double click your working directory
datadir<- c("data")
datadir
?help(fileplot)
?file.path
?help(file.path)
datadir <- file.path("users",)
datadir <- "M:/Geo_script"

Add <- function(x) {
  d <- x+1
  return(d)
}


Add(4)

add <- function(x=5) { 
  z <- X + 1
  return(Z)
 }

Add(4)

newfunc <- function(x,y) {
  z <- 2*x+y
  return(c(z,x,y))
}
a2b <- newfunc(2,4)
a2b
rm(a, newfunc,a2b)
?????rm
help.start()
??metrix
##########################################

install.packages("http://rasta.r-forge.r-project.org/")
download.file("http://rasta.r-forge.r-project.org/rasta.zip",file.path(datadir,"rasta.zip"))
update.packages(checkBuilt=TRUE, ask = FALSE)
install.packages("raster", dependencies = TRUE)
install.packages("ggplot2", dependencies = TRUE)
install.packages("bitops", dependencies = TRUE)
install.packages("spdep", dependencies = TRUE)
install.packages("randomforest", dependencies = TRUE)
install.packages("reshape", dependencies=TRUE)
install.packages("ggmap", dependencies=TRUE)
library(rasta)
library(raster)
??mysummery
mysummery
?read.csv
f <- system.file(file.path("extdata", "kenpop89to99.csv"),
                 package ="rasta")
mydat <- read.csv(f)

?mysummary
mysummary
f <- system.file(file.path("extdata", "kenpop89to99.csv"),
                  package ="rasta")
mydat <- read.csv(f)
mydat
names(mydat)[1:3]
summary(mydat$Y89Pop)[1:3]
head(mydat$Y89Births)[1:2]
class(mydat)
myreg<-lm(Y99Pop ~ Y89Births + Y89Brate, data = mydat)
myreg
myreg[c(1,8)]
names(myreg)[1:3]
myregsum <- summary(myreg)
myregsum
myregsum[["adj.r.squared"]]
myregsum$adj.r.squared

############################################################
#############################################################
############################

library(rasta)
?getData

gelderland <- function(country, level){
  NLD <- raster::getData("GADM", country = "country",
                         level = "level", path = datadir)
  plot(NLD)
  map <- NLD[NLD$NAME_1 == "Gelderland",]
  plot(province, bg = "white", axes=T)
  plot(Province, lwd = 10, border = "skyblue", add=T)
  plot(province, col = "green4", add = T)
  grid()
  box()
  invisible(text(getSpPPolygonsLabptSlots(province),
                 labels = as.character(province$NAME_2), cex = 0.5, col = "black", font = 0.5))
  mtext(side = 3, line = 1, "Provincial Map of Gelderland", cex = 2)
  mtext(side = 1, "Longitude", line = 2.5, cex=1.1)
  mtext(side = 2, "Latitude", line = 2.5, cex=1.1)
  text(122.08, 13.22, "Projection: Geographic\n
Coordinate System: WGS 1984\n
Data Source: GADM.org", adj = c(0, 0), cex = 0.7, col = "grey20") 

}


?ggplot
vector <- c(1,2,3,4)
vector
library(raster)
r <- raster(nrow=20,ncol=20)
plot(r)
random <- rnorm(n=20)
random
data(wheat)
plot(wheat)
library(sp)
data(meuse.grid)
data
?meuse.grid
data(meuse.grid)
coordinates(meuse.grid) = ~x+y
proj4string(meuse.grid) <- CRS("+init=epsg:28992")
gridded(meuse.grid) = TRUE
spplot(meuse.grid)
Vector
vector<- c(1,2,3,4,3,4,6,7)
vector[vector==3]  <- NA
vector [vector==4]<- NA
vector [vector==1]<- NA
vector
vector [vector==NA]<- 4
vector[is.na(vector)]<- 4
vector[vector %in% c(3,4)] <- NA
vector
###############################
####################
Hello <- function(name){
  out <- paste("Hello", name)
  return(out)
}
Hello("john")
Hello("5")
Hello("r")
######
Hello <- function(name){
  if(is.character(name)){
  out <- paste("Hello", name)
  return(out)}
} else if(is.numeric(name)){
  out <- paste("Hello", name)
  warning("object of class character expected")
}else{
  stop("object of class character expected")
}
return(out)
}
Hello("john")

######################################
########
ERROR HANDILING
TRY Examle
##################
square <- function(x) {
  out <- x*x
  return(out)
}

square(3)
list <- list(1,2,3,4,5)
list
out <- c()
for(i in 1: length(list)){
  out[i] <- square(list[[i]])
}
out
########
list2 <- list(1,2,3,"wageningen", 4,5)
square("wageningen")

########################################
trysquare <- function(x){
  s <- try(square(x))
  return(s)
}
out <- c()
for(i in 1: length(list2)){
  out[i] <- trysquare(list2[[i]])
}
out
b <- c(quyt)
trysquare(b)

#######################################
##############################
#### CLON the data