library(shiny)

shinyUI(fluidPage(
  

  fluidRow(column(4, p("tekst")), column(4, p("prevyü")), column(2, "simvol sayı")),
  
  fluidRow(column(4, tags$textarea(id="foo", rows=10, cols=40, "Default value")),
          column(4,  textOutput("text1")),
          column(2, textOutput("text2"))
          ))
           
  )