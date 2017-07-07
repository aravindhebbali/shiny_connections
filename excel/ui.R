library(shiny)

fluidPage(
  titlePanel("Excel"),
  sidebarLayout(
    sidebarPanel(
      fileInput(
        inputId = 'xl_file',
        label = 'Choose file:',
        accept = c('.xls', '.xlsx')
      ),
      numericInput(
        inputId = 'sheet_n',
        label = 'Sheet',
        value = 1,
        min = 1,
        step = 1
      )
    ),
    mainPanel(
      tableOutput('xl_out')
    )
  )
)