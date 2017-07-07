library(shiny)

fluidPage(
  titlePanel("SAS"),
  sidebarLayout(
    sidebarPanel(
      fileInput(
        inputId = 'sas_file',
        label = 'Choose SAS file:',
        accept = '.sas7bdat'
      )
    ),
    mainPanel(
      tableOutput('sas_out')
    )
  )
)