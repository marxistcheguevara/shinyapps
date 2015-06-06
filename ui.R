library(shiny)
library(ggplot2)
library(eeptools)
shinyUI(pageWithSidebar(
  # Title
  headerPanel("Müşahidələrin paylanması"),
  sidebarPanel(
    sliderInput("müş","Müşahidələrin sayı:",
                min=0,max=1000,value=100)
  ),
  # GGPLOT
  mainPanel(
    plotOutput("distPlot")
  )
)) 