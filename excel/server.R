library(readxl)
library(tools)

function(input, output) {
  
  output$xl_out <- renderTable({
    
    inFile <- input$xl_file
    
    if (is.null(inFile)) {
      return(NULL)
    }
    
    ext <- tools::file_ext(inFile$name)
    
    file.rename(inFile$datapath,
                paste(inFile$datapath, ext, sep="."))
    
    readxl::read_excel(
      path = paste(inFile$datapath, ext, sep="."),
      sheet = input$sheet_n
    )
    
  })
  
}