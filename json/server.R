library(jsonlite)

function(input, output) {
  
  output$json_out <- renderTable({
    
    inFile <- input$json_file
    
    if (is.null(inFile)) {
      return(NULL)
    }
    
    jsonlite::fromJSON(inFile$datapath)
    
  })
  
}