
shinyServer(
function(input, output, session){
  
  output$g_trad <- renderPlot({
    borde <- input$posicion
        if(borde =="dodge"){borde1 <- "black"} else {borde1 <- NA }
    
      ggplot(lab_trad, aes_string(input$agrupar, fill="VIRUS"))+
        geom_bar(stat="count", colour=borde1, position=input$posicion)+
        scale_fill_manual(values=c("#000000","#ff0000","#339966","#ffffff","#00ccff","#ffcc00"))+
        labs(y = "N° de virus identificados")
  })
  output$g_notrad <- renderPlot({
    borde <- input$posicion2
    if(borde =="dodge"){borde1 <- "black"} else {borde1 <- NA }
    
    ggplot(lab_notrad, aes_string(input$agrupar2, fill="VIRUS"))+
      geom_bar(stat="count", colour=borde1, position=input$posicion2)+
      labs(y = "N° de virus identificados")
  }) 
})
