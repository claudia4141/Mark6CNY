install.packages("shiny")
library(shiny)

ui <- fluidPage(
  tags$head(tags$script(src = "message-handler.js")),
  actionButton("do", "新春金多寶號碼")
)













# Define UI for application that plots random distributions 
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("新春金多寶六合彩"),
  
  # Sidebar with a slider input for number of observations
  sidebarPanel(
    sliderInput("obs", 
                "Number of observations:", 
                min = 1,
                max = 1000, 
                value = 500)
  ),

  ui <- fluidPage(
    tags$head(tags$script(src = "message-handler.js")),
    actionButton("do", "Click Me")
  )
  
  
  
  
    
  # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot")
  )
))


ui <- fluidPage(
  tags$head(tags$script(src = "message-handler.js")),
  actionButton("do", "Click Me")
)



server <- function(input, output, session) {
  observeEvent(input$do, {
    session$sendCustomMessage(type = 'testmessage',
                              message = 'Thank you for clicking')
  })
}

shinyApp(ui, server)