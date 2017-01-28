library(shiny)
server <- function(input, output, session) {
  observeEvent(input$do, {
    session$sendCustomMessage(type = 'testmessage',
                              message = '祝大家恭喜發財,新春快樂,財源滾滾來滾滾來')
  })
}
