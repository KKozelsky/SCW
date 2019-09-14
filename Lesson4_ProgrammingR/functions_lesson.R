gapminder <- read.table("gapminder.txt", header = TRUE)

#convert F to C temps
f_to_c <- function(temp){
  celsius <- (temp - 32) * 5/9
  return(celsius)
}

#convert to Kelvin
c_to_k <- function(temp_c){
  kelvin <- temp_c + 273.15
  return(kelvin)
}

#combine functions
f_to_k <- function(temp_f){
  celsius <- f_to_c(temp_f)
  kelvin <- c_to_k(celsius)
  return(kelvin)
}

#Challenge 1
MeanlifeExp <- function(icontinent){
  #                                                    row                column title
  subset_continent_gapminder <- gapminder[gapminder$continent==icontinent, "lifeExp"]
  mean_exp <- mean(subset_continent_gapminder)
  return(mean_exp)
}

##########################################################################################
#if (condition is true){
#  perform some action
#}
#else{condition is FALSE
#  perform some other action
#}
###multiple condiditons
#if(condition is true){
#  do this
#} else if (second condition true){
#  do this
#} else{
#  do this
#}
###########################################################################################

x <- 8
if(x>=10){
  print("x is greater than or equal to 10")
}else{
  print("x is less than 10")
}

if(x>10){
  print("x is greater than 10")
}else if(x>5){
  print("x is greater than 5 and less than 10")
}else{
  print("x is less than 5")
}

#if statements only test if a value is true or false, not the actual condiditon ex:
x <- 4 == 3
if(x){
  print("x is greater than or equal to 10")
}else{
  print("x is less than 10")
}
#gives "x is less than 10", even though the variable "x" doesn't make sense in this context

#challenge 2
MeanlifeExpAsia <- function(icontinent){
  #                                                    row                column title
  subset_continent_gapminder <- gapminder[gapminder$continent==icontinent, "lifeExp"]
  mean_exp <- mean(subset_continent_gapminder)
  if (mean_exp>50){
    print("Life expectancy of Asia is greater than 50")
  }else{
    print("Life expectancy of Asia is less than 50")
  }
}

###############################################################
#for(iteraor in a set of values){
#print(i)
#}

for(i in 1:10){
  print(i)
}

menuitems <- c("chicken","soup","salad","tea")
menustates <- factor(c("solid","liquid","solid","liquid"))
menucost <- c(4.99,2.99,3.29,1.89)
myorder_df <- data.frame(menuitems,menustates,menucost)


for(items in myorder_df$menuitems){
  myorder_df_subset <- myorder_df[myorder_df$menuitems==items, ]
  print(items)
  print(myorder_df_subset$menucost)
}

#Challenge 3
  #                                                    row                column title
  for(cont in unique(gapminder$continent)){
  subset_continent_gapminder <- gapminder[gapminder$continent==cont, "lifeExp"]
  mean_exp <- mean(subset_continent_gapminder)
  if (mean_exp>50){
    print(paste0("Life Expectancy of ", cont, " is greater than 50"))
  }else{
    print(paste0("Life Expectancy of ", cont, " is less than 50"))
  }
  }
