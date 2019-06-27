library(shiny)
library(shinythemes)

server <- function(input, output, session) {
  
}
stationlist = read.csv("Station Data.csv")
ui = fluidPage(
  selectInput("Station Name", "Choose your Starting Station",stationlist$Station.Name
  ),
  textInput("Age", "Enter your age"),
  textOutput("result")
)

shinyApp(ui = ui, server = server) # this launches your app
