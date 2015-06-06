library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("illustrating markup"),
  sidebarPanel(
    
    numericInput("id1", "Numeric input label 1", 0, min =0, max =10, step=1),
    checkboxGroupInput("id2", "Checkbox", c("value 1" = "1", 
                                            "value 2" = "2",
                                            "value 3" = "3" )),
    dateInput("date", "Date:")
  ),
  
  mainPanel(
    h3("illustrating outputs"),
    h4("you entered"),
    verbatimTextOutput("oid1"),
    h4("you choosed"),
    verbatimTextOutput("oid2"),
    h4("you picked"),
    verbatimTextOutput("odate")
    )
  
  ))