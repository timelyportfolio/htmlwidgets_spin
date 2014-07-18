#' @export
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  s <- structure(params, class = c('spin', 'htmlwidget'))
  attr(s,"jsfile") <- "http://timelyportfolio.github.io/htmlwidgets_spin/inst/spin.js"
  return(s)
}

#' @export
spinOutput <- htmlwidgets::widgetOutput('spin')


