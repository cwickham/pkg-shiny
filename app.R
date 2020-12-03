library(shiny)
library(devtools)
load_all()

ui <- fluidPage(
  textInput("name", label = "What's your name?"),
  textOutput("greeting")
)

server <- function(input, output, session) {
  output$greeting <- renderText({
    req(input$name)
    hello(input$name)
    })
}

shinyApp(ui, server)
