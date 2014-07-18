#' @export
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  s <- structure(params, class = c('spin', 'htmlwidget'))
  attr(s,"jsfile") <- "http://timelyportfolio.github.io/htmlwidgets_spin/inst/spin.js"
  attr(s,"config") <- "http://timelyportfolio.github.io/htmlwidgets_spin/inst/spin.yaml"
  attr(s,"package") <- NULL
  return(s)
}

#' @export
spinOutput <- htmlwidgets::widgetOutput('spin')


