shinyUI(
  
  pageWithSidebar(
    #App title
    headerPanel("diabetes prediction"),
    
    #inputs
    sidebarPanel(
      
      numericInput('glucose', 'Glucose mg/dl', 90, min=50, max = 200, step =5),
      submitButton("Submit")
      
      ),
    
    mainPanel(
      
      h3("results of prediction"),
      h4("you entered"),
      verbatimTextOutput("inputValue"),
      h4("which resulted"),
      verbatimTextOutput("prediction")
      )
    )
  )