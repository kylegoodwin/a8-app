manipulate <- function(data){
  
Virginica <- filter(data,Species == "virginica") 
Versicolor <- filter(data, Species == "versicolor")
Setosa <- filter(data, Species == "setosa")

sepal_length <- list(Virginica = mean(Virginica$Sepal.Length), Versicolor = mean(Versicolor$Sepal.Length),
                     Setosa = mean(Setosa$Sepal.Length))

sepal_width <- list(Virginica = mean(Virginica$Sepal.Width), Versicolor = mean(Versicolor$Sepal.Width),
                    Setosa = mean(Setosa$Sepal.Width))

petal_length <- list(Virginica = mean(Virginica$Petal.Length), Versicolor = mean(Versicolor$Petal.Length),
                     Setosa = mean(Setosa$Petal.Length))

petal_width <- list(Virginica = mean(Virginica$Petal.Width), Versicolor = mean(Versicolor$Petal.Width),
                    Setosa = mean(Setosa$Petal.Width))

one <- data.frame(sepal_length) %>% gather("sort","mean",1:3) %>% mutate(type = "Sepal Length")
two <- data.frame(sepal_width) %>% gather("sort","mean", 1:3) %>% mutate(type = "Sepal Width")
three <- data.frame(petal_length) %>% gather("sort","mean", 1:3) %>% mutate(type = "Petal Length")
four <- data.frame(petal_width) %>% gather("sort","mean", 1:3) %>% mutate(type = "Petal Width")

return(big <- merge(one,two,all=TRUE) %>% merge(three,all=TRUE) %>% merge(four,all=TRUE))


}


