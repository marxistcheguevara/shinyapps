shinyServer(function (input, output) {
  
  output$text1 <-renderText({
    
    paste(input$foo)
    
})

  output$text2 <-renderText({ paste(nchar(input$foo)) })

})