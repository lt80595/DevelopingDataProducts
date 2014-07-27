library(maps)

shinyServer(
  function(input,output) {
    output$DohaMap <- renderPlot({
      m = map("world", c("Qatar", "Saudi Arabia", "United Arab Emirates", "Yemen",
                         "Oman", "Bahrain", "Egypt", "Iraq", "Israel", "Jordan",
                         "Kuwait", "Lebanon", "Oman", "Palestine", "Syria"))
      input$goButton
      isolate(
      if(length(input$id2) == 1) map.cities(country = {input$id2}, capitals = 1)
      else if(length(input$id2) == 2){
        map.cities(country = {input$id2[1]}, capitals = 1)
        map.cities(country = {input$id2[2]}, capitals = 1)
      } else if(length(input$id2) == 3){
        map.cities(country = {input$id2[1]}, capitals = 1)
        map.cities(country = {input$id2[2]}, capitals = 1)
        map.cities(country = {input$id2[3]}, capitals = 1)
      } else if(length(input$id2) == 4){
        map.cities(country = {input$id2[1]}, capitals = 1)
        map.cities(country = {input$id2[2]}, capitals = 1)
        map.cities(country = {input$id2[3]}, capitals = 1)
        map.cities(country = {input$id2[4]}, capitals = 1)
      })
    })
    output$oid2 <- renderPrint({input$id2})
    output$text3 <- renderText({
      "Pick one Country at a time"
    })
    
    noEgypt <- "Not Egypt"
    noIraq <- "Not Iraq"
    yesQatar <- "Yes! Doha is the Capitol of Qatar"
    noYemen <- "Not Yemen"
    
    output$text4 <- renderText({
      input$goButton
      isolate(if(length(input$id2) == 1) {
        if(input$id2 == "Egypt") noEgypt
        else if(input$id2 == "Iraq") noIraq
        else if(input$id2 == "Qatar") yesQatar
        else if(input$id2 == "Yemen") noYemen
      })
  })
  }
  )
