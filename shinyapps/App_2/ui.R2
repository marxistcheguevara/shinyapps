shinyUI(fluidPage(

  titlePanel("html widgets"),
  
  fluidRow(
    
    column(3, 
           h3("buttons"),
           actionButton("action", label="Action"),
           br(),
           br(),
           submitButton("Submit")
           ),
    
    column(3, 
           h3("single checkbox"),
           checkboxInput("checkbox", label = "choice A", value = TRUE),
           br()
      
      
      ),
    
    column(3, 
           
           checkboxGroupInput("checkboxgroup", label=h3("checkbox group"), choices =list(
             "choice 1"=1, "choice 2" = 2, "choice 3" =3), selected=2)
      ),
    
    column(3,
           dateInput(inputId = "dinp", label = "date input", 
                     value = NULL, format="d/mm/yyyy", weekstart = 0)
      
      )
    
    ),
  
  fluidRow(
    
    column(3,
           
           dateRangeInput("drangeInp", label = h3("date range"))
      
      ),
    
    column (3, 
            
            fileInput(inputId = "finp", label = "file input", multiple = TRUE)
            
            ),
    
    column(3, 
           h3("help text widget"),
           helpText("what can i do sometimes? hel me please")
           ),
    column(3, 
           
           numericInput(inputId = "numinp", label = "numeric input", 
                        value = 0, min = -500, max = 500, step = 0.2)
           
           )
    
    
    ),  
  
  fluidRow(
    
    column(3, radioButtons(inputId = "rinp", label = "radio input", choices = c("normal"="norm",
                                                                                "uniform" = "unif",
                                                                                "log-normal"="lnorm",
                                                                                "exponential"="exp"))), 
    column(3, 
           selectInput(inputId = "sinp", label = "select input", 
                       choices = c("choice-1"=1, "choice-2"=2, "choice-3"=3), 
                       multiple = TRUE, selectize = FALSE)
           ), 
    column(3, 
           sliderInput(inputId = "slinp", label = "slider input", min = -1000, 
                       max=1000, value = 0, step = 5)
           
           ),
    column(3, 
           textInput(inputId = "textinp", label = "text input", value = "enter text")
           )
    
    
    )
  
  
)



)
