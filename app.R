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
                  selectInput("ninth", h6("Select Nineth Place Finisher"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  selectInput("last", h5("Select the Loser"),
                              choices = c("Mack", "Fish", "Todd", "Colin", "Andrew", "Jake", "Frank", "Matt","Cody", "Jim")),
                  actionButton("goButton", "Go!")
                  
                             ),
                mainPanel(
                  tableOutput("tabs")
                )
  )
)

# Define server logic required to draw a histogram ----
server <- function(input, output, session) {
  output$tabs <- renderTable({ 
    input$goButton
    ## Set seed taken from user input 
    set.seed(input$year)
    
    
    ## Get votes for position
    first = input$first
    second = rep(input$second,2**1)
    third = rep(input$third,2**2)
    fourth = rep(input$fourth,2**3)
    fifth = rep(input$fifth, 2**4)
    sixth = rep(input$sixth, 2**5)
    seventh = rep(input$seventh, 2**6)
    eighth = rep(input$eighth, 2**7)
    ninth = rep(input$ninth, 2**8)
    last = rep(input$last, 2**9)
    
    ## Combine lots into pool
    pool = c(first, second, third, fourth, fifth, sixth, seventh, eighth, ninth, last)
    
    ## Shuffle Pool
    shuffled_pool = sample(pool)
    
    ## Print unique output (order of first occurence of a name will determine position)
    pick_selection_order = unique(shuffled_pool)
    
    df = as.data.frame(pick_selection_order)
    df
    })
}

shinyApp(ui = ui, server = server)