library(shiny)

# Define UI for application that
shinyUI(fluidPage(
    
    # Application title
    titlePanel("Coursera Data Products Course Project Application"),
    
    # Sidebar
    sidebarLayout(
        sidebarPanel(
            h4('Predicting default status'),
            p('Please input values below:'),
            numericInput('balance', 'Credit balance (USD)', 0, min = 0, step = 10),
            numericInput('income', 'Income of the person (USD)', 0, min = 0, step = 10),
            radioButtons('student', 'Student or not', choices = list("Student" = 1, "Not a student" = 0), selected = 1 ),
            actionButton('goButton', 'Calculate')
        ),
        
        mainPanel(
            h2('Predicting default status'),
            h4('Coursera Data Products Course Project Application based on prediction algorithm developed in "Introduction to Statistical Learning" by G.James, D.Witten, T.Hastie, R.Tibshirani'),
            p('This app predicts default probability of a person given his/her income, credit card balance, student/not student status.'),
            p('Prediction is based on logistic regression algorithm developed with simulated Default dataset in ISLR package.'),
            p(em('To calculate the probability of default as fraction of 1, please, input values on the left-side panel and press "Calculate" button')),
            br(),
            br(),
            h4('The probability of default equals to:'),
            h3(textOutput('prob')),
            br(),
            br(),
            p('Please, pay attention that the data was simulated, so the algorithm is not related to real life and was developed for education purposes. For more information please check:'),
            a(href="http://www-bcf.usc.edu/~gareth/ISL/", '"Introduction to Statistical Learning" by G.James, D.Witten, T.Hastie, R.Tibshirani')
        )
    )
))
