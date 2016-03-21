library(shiny)

shinyUI(
    pageWithSidebar(
        # Price of Diamonds per Carat prediction
        headerPanel("Convert MPH to Kilometers"),
        
        sidebarPanel(
            numericInput('mph', 'Enter MPH', 1 , min = 1, max = 1000, step = 1),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Results of the conversion'),
            h4('You entered the following MPH'),
            verbatimTextOutput("inputValue"),
            h4('Calculated in Kilometers'),
            verbatimTextOutput("prediction")
        )
    )
)