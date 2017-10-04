library(shiny)
# Define UI for app that draws a histogram ----
ui <- fluidPage(
  titlePanel("Draft Order Generator"),
  
  sidebarLayout(position = "left",
                sidebarPanel(
                  numericInput("year", h3("Enter Year"), value = 2018),
                  
                  ## First Place
                  selectInput("first", h5("Select First Place Finisher"),
                                         choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("second", h6("Select Second Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("third", h6("Select Third Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("fourth", h6("Select Fourth Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("fifth", h6("Select Fifth Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("sixth", h6("Select Sixth Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("seventh", h6("Select Seventh Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("eighth", h6("Select Eighth Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("nine", h6("Select Nineth Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("last", h5("Select the Loser"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim"))
                  
                             ),
                mainPanel(
                  tableOutput("tabs")
                )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output, session) {
  output$tabs <- renderTable({ 
    
    ## Set seed taken from user input 
    set.seed(input$year)
    df = rnorm(5)
    df
    })
}

shinyApp(ui = ui, server = server)