library(shiny)

fluidPage(
  titlePanel("JSON"),
  sidebarLayout(
    sidebarPanel(
      fileInput(
        inputId = 'json_file',
        label = 'Choose JSON file:',
        accept = '.json'
      )
    ),
    mainPanel(
      tableOutput('json_out')
    )
  )
)