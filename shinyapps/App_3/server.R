shinyServer(function(input, output){
  

  output$text1 <-renderText({
    
    paste("hi, ", input$name)
    
    
  })
  
  output$text2 <- renderText({
    
    paste("you were born in: ", input$bday)
    
  })
  
  output$text3 <- renderText({
    
    paste("and your sex is:", input$sex)
    
  })
  
}

)