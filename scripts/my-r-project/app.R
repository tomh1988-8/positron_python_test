# app.R

# Load libraries
library(shiny)

# UI
ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30),
      checkboxInput("show_density", "Show density curve")
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# Server
server <- function(input, output) {
  output$distPlot <- renderPlot({
    x <- faithful[, 2] # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x,
      breaks = bins, col = "#75AADB", border = "white",
      probability = TRUE,
      main = "Histogram of Old Faithful Geyser data"
    )
    if (input$show_density) {
      dens <- density(x)
      lines(dens$x, dens$y, col = "red")
    }
  })
}

# Run the application
shinyApp(ui = ui, server = server)
