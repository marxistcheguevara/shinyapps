shinyUI(fluidPage(
  
  titlePanel("personal"),
  
  fluidRow(
    
    column(4,
           
           radioButtons(inputId = "sex", label = "gender", choices = c("male"="male",
                                                                             "female"="female")),
           
           br(),
           
           
           dateInput(inputId = "bday", label = "date of birth", 
                     value = NULL, format="d/mm/yyyy", weekstart = 0),
           
           br(),
           
           textInput(inputId = "name", label = "your name", value = "enter your name")
           
      ),
           
    column(8,
           h3("--------------"),
           textOutput("text1"),
           textOutput("text2"),
           textOutput("text3")
           
           )
           
    
    )
  
  
)

)