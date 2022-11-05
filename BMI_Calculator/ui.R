#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("BMI Generator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      helpText("Enter your weight and height to know how fit you are!"),  
      selectInput("select_measure", label = h6("Select the measurement"), choices = list("kg vs. cm" = 1, "lb vs. inches" = 703), selected = 1),
      numericInput("num_weight", label = h6("Enter your weight"),min = 1, value = NULL),
      numericInput("num_height", label = h6("Enter your height"),min = 1, value = NULL),
      actionButton("action_Calc", label = "CALCULATE")        
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("BMI",
                 p(h5("")), textOutput("text_weight"),
                 textOutput("text_height"),  p(h5("Body Mass Index(BMI):")),
                 textOutput("text_bmi")
        ),
        tabPanel("BMI Chart",
                 p(h4("Simple Interest Calculator:")),
                 helpText("Statistical Categories of BMI as given by WHO"),
                 HTML("
  
                      <b> Less than 15 </b> = Very Severly Underweight <br>
                      <br> </br>
                      <b> Between 15 and 16 </b> = Severly Underweight <br>
                      <br> </br>
                     <b> Between 16 and 18.5 </b> = Underweight <br>
                      <br> </br>
                      <b> Between 18.5 and 25 = Healthy Weight  </b> <br>
                      <br> </br>
                      <b> Between 25 and 30 </b> = Overweight <br>
                      <br> </br>
                      <b> Between 30 and 35 </b> = Moderately Overweight <br>
                      <br> </br>
                      <b> Between 35 and 40 </b> = Severely Overweight <br>
                      <br> </br>
                      <b> Above 40 </b> = Very Severely Overweight <br>")                
        )
      )
    )
  )
))
