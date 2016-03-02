# Server.r
# Read in data
#setwd("/Users/kylegoodwin/INFO498F/a8-app/")

data_set <- iris

source("buildvis.R")
source("manipulate.R")

library(plotly)
library(shiny)
library(dplyr)
library(tidyr)


bar_data <- manipulate(data_set)


shinyServer(function(input, output) {
  # Create a map via your build_map function
  output$bar_graph <- renderPlotly({ 
    barGraph(bar_data,input$species1,input$species2)
    
  })
  output$scatter <- renderPlotly({ 
  })
})