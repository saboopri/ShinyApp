library(shiny)
library(ggplot2)
shinyServer(function(input, output) {
  output$plot1 <- renderPlot({
    qplot(x=airquality[,input$xcol], y=airquality[,input$ycol], xlab=input$xcol, ylab=input$ycol)+geom_point(shape=1) + geom_smooth()
  })
  
})