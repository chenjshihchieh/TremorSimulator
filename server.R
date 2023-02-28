function(input, output, session) {
 library(KeyboardSimulator)
 output$hist <- renderPlot({
 hist(rnorm(input$n))
 })
 
 #Timer: When the trial starts, the timer will count down from 20 to 0 then repeat.
 #When time runs out rv$timeout becomes true
 observe({
   invalidateLater(25, session)
   x <- mouse.get_cursor()
   m <- rnorm(1, 0, 15)
   mouse.move(x[1]+m, x[2])
 })
 
 observeEvent(input$exit, {stopApp()})
 
} 
