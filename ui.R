shinyUI(
  navbarPage("Virus Respiratorios",

## Pestaña Inicio
  tabPanel("Inicio",
           pageWithSidebar(
             headerPanel(""),
                       sidebarPanel(),
                       mainPanel(
                         includeMarkdown("intro.md")
                        )
                       )),
## Pestaña Virus Tradicionales
  tabPanel("Virus Tradicionales",
     
  pageWithSidebar(
    headerPanel("Virus Tradicionales"),
    
    sidebarPanel(
      selectInput("agrupar","Agrupar Por",
                  list ("Centro"="PROCED",
                        "Género"="SEXO")),
      selectInput("posicion","Visualizar Barras",
                list ("Sumadas"="dodge",
                      "Agrupadas"="stack"))),
    mainPanel(
      plotOutput("g_trad")
    )
  )),
  
## Pestaña Virus No Tradicionales
  tabPanel("Virus no tradicionales",
           pageWithSidebar(
             headerPanel("Virus No Tradicionales"),
             
             sidebarPanel(
               selectInput("agrupar2","Agrupar Por",
                           list ("Centro"="PROCED",
                                 "Género"="SEXO")),
             selectInput("posicion2","Visualizar Barras",
                         list ("Sumadas"="dodge",
                               "Agrupadas"="stack"))),
             
             mainPanel(
               plotOutput("g_notrad")
             )
           ))
  )  
)