#Kyle Goodwin
#INFO 498f
#Project 8 - Web Application

#Import web and plotting libraries
library(shiny)
library(plotly)

#Create UI for web app
shinyUI(navbarPage('Iris Data Visualizations',
          tabPanel("Bar Graph",
          titlePanel('Average Iris Demensions Across Species'),
           # Create sidebar layout
           sidebarLayout(
             
             # Side panel for controls
             sidebarPanel(
               
               # Inputs to select species to compare
               selectInput("species1", label = h3("Species 1"), 
                           choices = list("Virginica" = 'Virginica', "Versicolor" = 'Versicolor', "Setosa" = 'Setosa'), 
                           selected = 'Virginica'), 
               
               selectInput("species2", label = h3("Species 2"), 
                           choices = list("Virginica" = 'Virginica', "Versicolor" = 'Versicolor', "Setosa" = 'Setosa'), 
                           selected = 'Versicolor')
             ),
             
             # Main panel: display plotly bar graph
             mainPanel(
               plotlyOutput('bar_graph')
             )
           )
          ),
          
          #Tab for scatter plot
          tabPanel("Scatter",
                   
                   #Title
                   titlePanel("Scatter Plot of Iris Dimensions"),
                   
                   sidebarPanel(
                    
                   #Inputs to select deminsions to compare
                   selectInput("xaxis", label = h3("X Axis"), 
                               choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length',
                                              'Petal Width'='Petal.Length'), 
                               selected = 'Sepal.Length'),
                   
                   selectInput("yaxis", label = h3("Y Axis"), 
                               choices = list("Sepal Length" = 'Sepal.Length', "Sepal Width" = 'Sepal.Width', "Petal Length" = 'Petal.Length',
                                              'Petal Width'='Petal.Length'), 
                               selected = 'Sepal.Width'),
                   
                   #Input to select species for comparison
                   radioButtons("select_species", label = h3("Species to View"), choices = list("Virginica" = 'virginica', "Versicolor" = 'versicolor', "Setosa" = 'setosa'), 
                                selected = 'virginica')
                   ),
                   
                   #Show scatterplot
                   mainPanel(
                     plotlyOutput('scatter')
                   )
                   
                   
                   
                   )
          )
)
