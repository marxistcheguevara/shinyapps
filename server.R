library(shiny)

shinyServer(function(input,output){
  
  output$distPlot<-reactivePlot(function(){
    paylanma<-rnorm(input$müş)
    p<-qplot(paylanma,binwidth=0.1)+geom_vline(xintercept=mean(paylanma))+theme_dpi()
    p<-p+coord_cartesian(xlim=c(-4,4))+geom_vline(xintercept=median(paylanma),color=I("red"))
    print(p)
  })
  
  
})