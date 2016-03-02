#Kyle Goodwin
#INFO 498f
#Project 8 - Web Application

#This file contains the functions to create visualizations for 
#display on the web applicaiton created in the Server and UI Files

#Import libraries for graphics and wrangling
library(plotly)
library(dplyr)

#Return a bar graph for display in ui.r
barGraph <- function(vis_data, species1,species2){
  
  #Filter to display only selected species
  vis_data <- filter(vis_data, sort == species1 | sort == species2)

  return(vis_data %>%
    plot_ly(x = sort, y = mean, type = "bar", color = type))
}

#Return a scatter plot of deminsions for display in the UI
plotGraph <- function(vis_data,xaxis,yaxis,species){
  
  #Filter to only selected species
  vis_data <- filter(vis_data, Species == species)

  #Return plot
  return (plot_ly(data = vis_data, x = eval(parse(text = xaxis)), y = eval(parse(text = yaxis)), mode = "markers",
  color = eval(parse(text = yaxis)), marker = list(size=10)))

}