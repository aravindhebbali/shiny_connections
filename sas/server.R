library(haven)

function(input, output) {
  
  output$sas_out <- renderTable({
    
    inFile <- input$sas_file
    
    if (is.null(inFile)) {
      return(NULL)
    }
    
    haven::read_sas(inFile$datapath)
    
  })
  
}