#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
        titlePanel("Body Mass Index (BMI) Calculator"),
        sidebarLayout(sidebarPanel(
                helpText("The body mass index (BMI) calculator. Please, input your mass and height."),
                #User height input slider
                 sliderInput(
                        inputId = "height",
                        label = strong("Your height in cm:"),
                        min = 50,
                        max = 200,
                        value = 155
                ), 
                
                #User mass input slider
                sliderInput(
                        inputId = "mass",
                        label = strong("Your weight in kg:"),
                        min = 20,
                        max = 110,
                        value = 30
                ), 
                
                h5("The BMI is an attempt to quantify the amount of tissue mass, and then categorize that person as underweight, normal weight, overweight, or obese based on that value."),
                h6("The app calculates your BMI.")
        ),    
        
        mainPanel(
                uiOutput("user_data"), #Text with the user data
                plotOutput("plot", height = "175px", width = "100%"), #Colorful plot of the user BMI
                uiOutput("results") #Text results
        ))
))




