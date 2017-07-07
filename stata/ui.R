library(shiny)

fluidPage(
  titlePanel("Stata"),
  sidebarLayout(
    sidebarPanel(
      fileInput(
        inputId = 'stat_file',
        label = 'Choose Stat file:',
        accept = '.dta'
      )
    ),
    mainPanel(
      tableOutput('stat_out')
    )
  )
)