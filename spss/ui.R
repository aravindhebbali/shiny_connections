library(shiny)

fluidPage(
  titlePanel("SPSS"),
  sidebarLayout(
    sidebarPanel(
      fileInput(
        inputId = 'spss_file',
        label = 'Choose SPSS file:',
        accept = '.sav'
      )
    ),
    mainPanel(
      tableOutput('spss_out')
    )
  )
)