library(shiny)
shinyUI(
  pageWithSidebar(
  headerPanel("Air Quality"),
  sidebarPanel(
    selectInput('xcol', 'X Variable', names(airquality)[5:6], selected=names(airquality)[[5]]),
    selectInput('ycol', 'Y Variable', names(airquality)[1:4], selected=names(airquality)[[1]])
  ),
  mainPanel(
    plotOutput('plot1')
  )
))