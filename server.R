
shinyServer(
function(input, output, session){
  
  output$g_trad <- renderPlot(
      ggplot(lab_trad, aes_string(input$agrupar, fill="VIRUS"))+
        geom_bar(stat="count", colour="black", position=position_dodge())+
        scale_fill_manual(values=c("#000000","#ff0000","#339966","#ffffff","#00ccff","#ffcc00"))+
        labs(y = "N° de virus identificados")
    )
  output$g_notrad <- renderPlot(
    ggplot(lab_notrad, aes_string(input$agrupar2, fill="VIRUS"))+
      geom_bar(stat="count", colour="black", position=position_dodge())+
      labs(y = "N° de virus identificados")
  ) 
})
