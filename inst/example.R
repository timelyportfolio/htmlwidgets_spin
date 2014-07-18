require(htmltools)
require(htmlwidgets)
require(knob)

source('http://timelyportfolio.github.io/htmlwidgets_spin/R/spin.R')

tl <- renderTags(
  tagList(
    spin()
    ,spin()
    #does not work with local assets currently
    #,knob('Test', 20, 0, 100, angleArc = 250, angleOffset = -125,  fgColor = "#66CC66")
  )
)

#taken from rstudio htmltools
#allows save rather than view/browse of tags
saveTags <- function ( rendered ){
  html <- c(
    "<!DOCTYPE html>",
    "<html>",
    "<head>",
    "<meta charset=\"utf-8\"/>",
    renderDependencies(rendered$dependencies),
    rendered$head,
    "</head>",
    "<body>",
    rendered$html,
    "</body>",
    "</html>"
  )
  return(html)
}

saveTags(tl)
