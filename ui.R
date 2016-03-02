library(shiny)
library(plotly)
shinyUI(fluidPage(
  
          titlePanel('Iris Demensions Across Species'),
           # Create sidebar layout
           sidebarLayout(
             
             # Side panel for controls
             sidebarPanel(
               
               # Input to select variable to scatter
               selectInput("species1", label = h3("Species 1"), 
                           choices = list("Virginica" = 'Virginica', "Versicolor" = 'Versicolor', "Setosa" = 'Setosa'), 
                           selected = 'Virginica'), 
               
               selectInput("species2", label = h3("Species 2"), 
                           choices = list("Virginica" = 'Virginica', "Versicolor" = 'Versicolor', "Setosa" = 'Setosa'), 
                           selected = 'Versicolor')
             ),
             
             # Main panel: display plotly map
             mainPanel(
               plotlyOutput('bar_graph')
             )
           )
)
)