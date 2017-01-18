download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv", destfile = "gapminder-FiveYearData.csv")
gapminder <- read.csv("gapminder-FiveYearData.csv")




ggplot(data=gapminder, aes(x=year, y=lifeExp, by=country, color=continent)) + geom_point(aes(size=gdpPercap)) + geom_line()

ggplot(data=gapminder, aes(x=gdpPercap, y=lifeExp,  color=continent)) + geom_point(aes(size=pop))