#This is PlotLifeExp.R script

#read the data into R
MyDataFull <- read.table("gapminder.txt",header=TRUE)

#Select datat from Canada
Canada <- MyDataFull[MyDataFull$country=="Canada",]

#plot life exp

png("Canada.png") #opening a png device to write plot to

plot(Canada$year,Canada$lifeExp,type = "l",col = "blue")

dev.off() #closes the defive
