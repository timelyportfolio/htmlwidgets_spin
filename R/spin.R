#' @export
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  s <- structure(
    params
    , class = c('spin', 'htmlwidget')
    , jsfile = "http://timelyportfolio.github.io/htmlwidgets_spin/inst/spin.js"
    , config = "http://timelyportfolio.github.io/htmlwidgets_spin/inst/spin.yaml"
    , package = NA
  )
  return(s)
}

#' @export
spinOutput <- htmlwidgets::widgetOutput('spin')


