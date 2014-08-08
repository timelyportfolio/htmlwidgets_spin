## spin

This is an experimental R package that provides a [spin](http://fgnass.github.io/spin.js/) html widget for R.  For a quick tutorial, see Web Apprentice [spin.js Activity Indicator](spin.js Activity Indicator).

### Installation

You can install it from `github`.

```r
library(devtools)
#install_github('rstudio/htmltools')
#install_github('ramnathv/htmlwidgets')
#install_github('timelyportfolio/htmlwidgets_spin')
```

### Usage

Let us first create a simple spin.

```r
s1 <- spin()
s1
```

### Shiny Spin Configurator

```
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
```

### See Also

The `spin` package makes use of the `htmlwidgets` package that makes it super-simple to package any HTML widget for R. Please read [this](http://github.com/htmlwidgets/blob/master/README.md) to get a better sense on how the `htmlwidgets` package can make your life easier!
