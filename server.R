library(shiny)
library(UsingR)

mphToKilometers <- function(mph) {1.60934*(mph)}

shinyServer(
    function(input, output) {
        output$inputValue <- renderPrint({input$mph})
        output$prediction <- renderPrint({mphToKilometers(input$mph)})
    }
)