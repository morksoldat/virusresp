shinyUI(
  navbarPage("Virus Respiratorios",
             
  tabPanel("Inicio",
           pageWithSidebar(
             headerPanel(""),
                       sidebarPanel(),
                       mainPanel(
                         includeMarkdown("intro.md")
                        )
                       )),
  tabPanel("Virus Tradicionales",
     
  pageWithSidebar(
    headerPanel("Virus Tradicionales"),
    
    sidebarPanel(
      selectInput("agrupar","Agrupar Por",
                  list ("Centro"="PROCED",
                        "Género"="SEXO"))),

    mainPanel(
      plotOutput("g_trad")
    )
  )),
  
  tabPanel("Virus no tradicionales",
           pageWithSidebar(
             headerPanel("Virus No Tradicionales"),
             
             sidebarPanel(
               selectInput("agrupar2","Agrupar Por",
                           list ("Centro"="PROCED",
                                 "Género"="SEXO"))),
             
             mainPanel(
               plotOutput("g_notrad")
             )
           )           
           )
  )  
)