library(haven)

function(input, output) {
  
  output$spss_out <- renderTable({
    
    inFile <- input$spss_file
    
    if (is.null(inFile)) {
      return(NULL)
    }
    
    haven::read_sav(inFile$datapath)
    
  })
  
}