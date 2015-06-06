library(maps)
library(mapproj)
counties<-readRDS("data/counties.rds")
source("helpers.R")

shinyServer(
  function(input, output) {
    output$map <- renderPlot({
      data <- switch(input$var, 
                     "Percent White" = counties$white,
                     "Percent Black" = counties$black,
                     "Percent Hispanic" = counties$hispanic,
                     "Percent Asian" = counties$asian)
      
      color <- switch(input$var,
                      "Percent White" = "darkgreen",
                      "Percent Black" = "black",
                      "Percent Hispanic" = "darkorange",
                      "Percent Asian" = "darkviolet"                                          
                      )
      
      legend<- switch(input$var,
                      
                      "Percent White" = "%white",
                      "Percent Black" = "%black",
                      "Percent Hispanic" = "%hispanic",
                      "Percent Asian" = "asian"
                      
                              )
      
      percent_map(var = data, color = color, legend.title = legend, max = input$range[2], min = input$range[1])
    })
  }
)
#shinyServer(
 # function(input, output) {
  #  output$map <- renderPlot({
   #   args <- switch(input$var,
    #                 "Percent White" = list(counties$white, "darkgreen", "% White"),
     #                "Percent Black" = list(counties$black, "black", "% Black"),
      #               "Percent Hispanic" = list(counties$hispanic, "darkorange", "% Hispanic"),
       #              "Percent Asian" = list(counties$asian, "darkviolet", "% Asian"))
      
      #args$min <- input$range[1]
      #args$max <- input$range[2]
      
    #  do.call(percent_map, args)
    #})
  #}
#)