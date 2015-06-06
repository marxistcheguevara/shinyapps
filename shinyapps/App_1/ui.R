shinyUI(fluidPage(
  titlePanel("shiny çərçivəsi tətbiqi"),
  
  sidebarLayout ( 
                 
                 sidebarPanel(
                 div(h1("yüklənmə"), 
                 p("əvvəla CRAN saytından R-ni yükləmək lazımdı/" ) ,                
                 p(a(href='http://ironiya.wordpress.com', 'ironiya.wordpress.com')),
                 p(a(href ="alinovruzov.info", 'alinovruzov.info')),
                 p(a(href="futbolpress.az",'futbolpress.az')),
                 p(a(href="cavidaga.net",'cavidaga.net'))
                           ),
                 
                 
                 div(p(img(src='secondlife_icon.png', height=128, width=128))
                 ), 
                 
                 div(code("kod stilində mətn"),
                     em("italik mƏtn"),
                     strong("qalın mövqe")
                 )
                   ),
                 
                 mainPanel(
                   
                   h1("h1 başlığı"),
                   div(p("h1 başlığı altındakı div bloku"),
                       p(strong("another qalın mövqe"))
                       )
                   
                   )
                 
  
  )
  
  
  ))