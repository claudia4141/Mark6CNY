#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  titlePanel("新春金多寶"),
  img(src = 'mak.JPG'),
  h4("攪珠日期: 1 Feb 2017 "),
  h4("估計頭獎基金: $80,000,000"),
  strong("按下財源滾滾來滾滾來"),
  actionButton("do", "新春金多寶號碼"),
  tags$head(tags$script(src = "message-handler.js")),
  textOutput("Mark6")
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
  source("./gen_Mark6.R")
    observeEvent(input$do, {
    Mark6 <- gen_Mark6()
    
    df <- eventReactive(input$do, {
    gen_Mark6()
     })
    
    output$Mark6 <- renderPrint({df()
      })
    # print(paste("This will only be printed once"))
  })
}
# getwd()
# list.files()

# Run the application 
shinyApp(ui = ui, server = server)

