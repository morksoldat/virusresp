library(ggplot2)
library(shiny)
setwd("~/MEGAsync/Infecto/Proyecto Investigación/VirusRepsApp/Prueba 1/")
shinyServer(
function(input, output, session){
  
  output$grafico <- renderPlot({
    distType <- input$Distribución
    size <- input$sampleSize
    
    if(distType =="Normal"){
      randomVec <- data.frame(value=rnorm(size, mean= as.numeric(input$mean), sd=as.numeric(input$sd)))
    }
    else {
      randomVec <- data.frame(value=rexp(size, rate = 1/as.numeric(input$lamnda)))
    }
    ggplot(randomVec, aes(x=value)) + geom_histogram(binwidth = 0.2, aes(fill = ..count..) )
  }) 
})