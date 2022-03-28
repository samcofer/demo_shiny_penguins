#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinydashboard)
library(ggplot2)
library(dplyr)



body <- shinydashboard::dashboardBody(
    fluidRow(
        column(
            6, 
            tags$h4("Meeting the penguins!"),
            tags$p("Data were collected and made available by Dr. Kristen Gorman and the Palmer Station, Antarctica LTER, a member of the Long Term Ecological Research Network.")),
        column(6, tags$img(src = "https://allisonhorst.github.io/palmerpenguins/reference/figures/lter_penguins.png", width = 250))
    ),
    fluidRow(
        box(plotOutput("figBillVsFlipper")),
        box(plotOutput("figFlipperDist"))
    )
)



ui <- shinydashboard::dashboardPage(
    dashboardHeader(
        title = "Palmer's Penguins"
    ),
    dashboardSidebar(disable = TRUE),
    body,
    skin = "yellow"
)


server <- function(input, output) {
  
    # Load the data
    penguins <- palmerpenguins::penguins
    
    # Plots
    fig_bill_vs_flipper <- 
        penguins |> 
        ggplot(aes(x = flipper_length_mm, y = bill_length_mm, color = species, shape = species)) +
        geom_point() +
        labs(
            title = "Bill length vs. flipper length by species",
            x = "Flipper length (mm)",
            y = "Bill length (mm)"
        )
    
    fig_flipper_dist <-
        penguins |> 
        ggplot(aes(x = flipper_length_mm, fill = species)) +
        geom_histogram(alpha = 0.7, position = "identity") +
        labs(
            title = "Distribution of Flipper Length",
            x = "Flipper length (mm)",
            y = "Count"
        )
        
    # Outputs
    output$figBillVsFlipper <- renderPlot({fig_bill_vs_flipper})
    output$figFlipperDist <- renderPlot({fig_flipper_dist}) 
}

# Run the application 
shinyApp(ui = ui, server = server)
