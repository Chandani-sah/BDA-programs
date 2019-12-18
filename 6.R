data("airquality")

dim(airquality)

sapply(airquality, class)

is.na(airquality)

for(i in 1:ncol(airquality)) {
	airquality[is.na(airquality[,i]),i] <- mean(airquality[,i],na.rm=TRUE)
}
print(airquality)

x <- na.omit(airquality)
print(x)
