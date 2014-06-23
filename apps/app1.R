#data(mtcars)
#fit <- lm(mpg ~ factor(am) + wt + factor(cyl) + hp, data=mtcars)
#output$result <- renderPrint({
#  predict(fit,newdata=list(am=factor(input$transmission),wt=as.numeric(input$weight),cyl=factor(input$cylinder),hp=as.numeric(input$horsepower)),interval=("confidence"), level=input$confint)
#})
require(rCharts)
output$nvd3plot <- renderChart({
  haireye = as.data.frame(HairEyeColor)
  n1 <- nPlot(Freq ~ Hair, group = 'Eye', type = input$type,
              data = subset(haireye, Sex == input$sex)
  )
  n1$set(dom = 'nvd3plot', width = 600)
  n1
})