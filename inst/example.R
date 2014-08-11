require(htmltools)
require(htmlwidgets)
require(knob)

source('http://timelyportfolio.github.io/htmlwidgets_spin/R/spin.R')

tl <- renderTags(
  tagList(
    spin(config=list(position="relative"))
    ,spin(config=list(position="relative"))
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

#cat(saveTags(tl),file="inst/example.html")






library(shiny)
library(htmlwidgets)
library(spin)

ui = bootstrapPage(
  tags$style('body{margin-left:40px; margin-top:40px;}'),
  sliderInput('lines', 'Number of Lines', 0, 20, 15),
  sliderInput('length', 'Line Length', 0, 20, 10),
  sliderInput('width', 'Line Width', 0, 20, 5),
  sliderInput('radius', 'Radius of Inner Circle', 0, 50, 20),
  spinOutput('spinner', width = 100, height = 100)
)
server = function(input, output, session){
  output$spinner <- renderSpin(spin(
    lines = input$lines
    ,length = input$length
    ,width = input$width
    ,radius = input$radius
  ))
}

runApp(list(ui = ui, server = server))


#now do an example with a knob talking to a spin
library(htmltools)
library(htmlwidgets)
library(spin)
library(knob)

h <- tags$html(
  tags$div(id = "spin1", style = "width:25%;height:150px;display:inline-block"
    ,tags$h3("Spin To Adjust")
    ,spin(position = "relative", width = "100px", height = "100px")
  )
  ,tags$div(id = "spin2", style = "width:25%;height:150px;display:inline-block"
    ,tags$h3("Spin Not To Adjust")
    ,spin(position = "relative", width = "100px", height = "100px")
  )
  ,tags$div(
    tags$h3("Adjust # of Lines")
    ,knob('Knob Talks to Spin', 14, 0, 20, angleArc = 250, angleOffset = -125, 
          fgColor = "#66CC66",
    )
  )
  ,tags$script(
"
//override knob render value
//since no way currently to do #! js code !# or use JSONfn
HTMLWidgets.widgets[1].renderValue = function(el,data){
  /*var knobData = $('script[data-for = ' + $('.knob')[0].id + ']')
  var dataObj = JSON.parse(knobData.text());
  */
  data.change = function (v) {
    $('.spin')[0].spin.opts.lines = v;
     HTMLWidgets.widgets[0].renderValue(
       $('.spin')[0], $('.spin')[0].spin.opts
     )
  }
  //knobData.text(JSON.stringify(data));
  $('.knob').trigger('configure',data);
  $('.knob').val(data.value).trigger('change');
};

"
  )
)
html_print(h)