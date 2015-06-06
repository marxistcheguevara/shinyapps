library(shiny)
diabeteRisk <- function(glucose) glucose/200

shinyServer(

function(input, output) {
  output$inputValue <-renderPrint({input$glucose})
  output$prediction <-renderPrint({diabeteRisk(input$glucose)})
    }
)