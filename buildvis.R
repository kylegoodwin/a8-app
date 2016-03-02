#This file contains the functions to create visualizations for 
#display on the web applicaiton created in the Server and UI Files

library(plotly)
library(dplyr)

barGraph <- function(vis_data, species1,species2){
  

  vis_data <- filter(vis_data, sort == species1 | sort == species2)


  return(vis_data %>%
    plot_ly(x = sort, y = mean, type = "bar", color = type, colorscale = "rainbow"))
  
  
}


plotGraph <- function(vis_data){

}