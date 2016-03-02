#Kyle Goodwin
#INFO 498f
#Project 8 - Web Application

#Read in data
data_set <- iris

#Read in outsourced methods
source("buildvis.R")
source("manipulate.R")

#Read in external libraries
library(plotly)
library(shiny)
library(dplyr)
library(tidyr)

#Wrangle data for proper format for bar graph
bar_data <- manipulate(data_set)

#Start shiny server
shinyServer(function(input, output) {
  
  #Output a bar graph for the site
  output$bar_graph <- renderPlotly({
    
    #barGraph function in file buildvis.R
    barGraph(bar_data,input$species1,input$species2)
    
  })
  
  #Output a scatterplot for the site
  output$scatter <- renderPlotly({ 
    
    #plotGraph function in file buildvis.R
    plotGraph(data_set,input$xaxis,input$yaxis,input$select_species)
  })
})