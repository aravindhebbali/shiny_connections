library(haven)

function(input, output) {
  
  output$stat_out <- renderTable({
    
    inFile <- input$stat_file
    
    if (is.null(inFile)) {
      return(NULL)
    }
    
    haven::read_stata(inFile$datapath)
    
  })
  
}