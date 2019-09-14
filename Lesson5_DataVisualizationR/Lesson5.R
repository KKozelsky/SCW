install.packages("ggplot2")

library(ggplot2)

gapminder <- read.table("gapminder.txt", header = TRUE)

head(gapminder)

#data: what's being pulled, aes: how its graphed, geom_point: plot points
# This part creates the graph                     ##add layer## this places the points#
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#Challenge 1
ggplot(data = gapminder, aes(x = year, y = lifeExp)) + geom_point()

#Challenge 2
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point()

#Plus at the end of the line causes the layers to be in a list
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country)) + 
  geom_point() +
  geom_line(color = "blue") 
  
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(shape = 17, ) +
  scale_x_log10() +
  geom_smooth(method = "lm",size = 3)

az_row <- startsWith(as.vector(gapminder$country), c('A','Z'))
az_countries <- gapminder[az_row,]

lifeExp_plot <- ggplot(data = az_countries, aes(x = year, y = lifeExp, color=continent)) +
  geom_line() + facet_wrap( ~ country) +
  labs(
    x = "Year",              # x axis title
    y = "Life expectancy",   # y axis title
    title = "Figure 1",      # main title of figure
    color = "Continent"      # title of legend
  ) +
  theme(axis.text.x=element_text(angle=45), axis.ticks.x=element_blank())

ggsave(filename = "lifeExp.png", plot = lifeExp_plot, width = 12, height = 10, dpi = 300, unit = "cm")

ggsave(filename = "myPlot.pdf")

#Challenges
#6a
ggplot(data = gapminder[gapminder$country=="Czech_Republic",], aes(x = year, y = lifeExp)) +
  geom_bar(fill='green', stat = "identity")

#6b
e_row <- startsWith(as.vector(gapminder$country), c('E'))
e_countries <- gapminder[e_row,]
ggplot(data = e_countries, aes(x = year, y = pop/1000000, fill = continent))+
  geom_bar(stat="identity")+
  facet_wrap(~country)+
  labs(
    x= "Year",
    y= "Population (Millions)",
    title= "Figure 2",
    fill= "Continent"
  )

