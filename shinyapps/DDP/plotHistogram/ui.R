shinyUI(
  
  pageWithSidebar(
    
    headerPanel("example plot"),
    sidebarPanel(
      
      sliderInput("mu", "guess at the mean", value = 70, min = 62, max = 74, step = 0.05)
    
      ),
    
    mainPanel(
        plotOutput("newHist")
        )
      )
    
  )