# Notes from Software Carpentry Workshop 2017-01-17
# Author of these poor notes: Nathan Porter
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")

#load necessary packages
library("ggplot2")

#This is using the ggplot2 library for plotting the data
ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_point(aes(size=gdpPercap)) + geom_line()

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp,  color=continent)) + geom_point(aes(size=pop))


#Create plot with year vs life expectancy, did this in git class with Marian
ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point()

ggplot(data = gapminder, aes(x = year, y = lifeExp, color = continent)) + geom_point() + 
     facet_grid(.~continent)
#facet_grid allows you to create a series of panels for your data!

# save plot either as pdf or as png or other
ggsave(filename="year_vs_lifeexp_percont.png", width=5, height=4, units="in")
ggsave(filename="year_vs_lifeexp_percont.pdf", width=5, height=4, units="in")
