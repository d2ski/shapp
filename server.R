library(shiny)

# Define server logic
shinyServer(function(input, output) {
    output$prob <- renderText({
        input$goButton
        # Prediction using logistic regression
        isolate( round( (2.7178 ^ (-10.869 + (0.00574 * input$balance) + (0.003*input$income/1000) - (as.numeric(input$student)*0.6468))) / (1 + (2.7178 ^ (-10.869 + (0.00574 * input$balance) + (0.003*input$income/1000) - (as.numeric(input$student)*0.6468)))), 4) )
    })
})

#(2.7178 ^ (-10.869 + (0.00574 * input$balance) + (0.003*input$income/1000) - (as.numeric(input$student)*0.6468))) / (1 + (2.7178 ^ (-10.869 + (0.00574 * input$balance) + (0.003*input$income/1000) - (as.numeric(input$student)*0.6468))))

#2.718^(-10.869 + 0.00574*input$balance + 0.003*input$income/1000 - 0.6468*input$student) / (1 + 2.718^(-10.869 + 0.00574*input$balance + 0.003*input$income/1000 - as.numeric(input$student)*0.6468))