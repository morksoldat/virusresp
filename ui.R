shinyServer(
  pageWithSidebar(
    headerPanel("Prueba 1 Web Virus respiratorios"),
    
    sidebarPanel(
      selectInput("Distribución","Selecciona Distribución",
                  choices = c("Normal","Exponencial")),
      sliderInput("sampleSize", "Selecciona Tamaño Muestral",
                  min=100, max=5000, value=1000, step=100),
      conditionalPanel(condition = "input.Distribución =='Normal'",
                       textInput("mean", "Selecciona media", 10,),
                       textInput("sd", "Selecciona desviación estandar", 3)),
      conditionalPanel(condition = "input.Distribución == 'Exponencial'",
                       textInput("lamnda", "Selecciona valor lambda", 1))
      ),
    
    mainPanel(
      plotOutput("grafico")
    )
    
  )
  
  
)