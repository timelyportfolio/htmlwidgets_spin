#' @export
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  structure(params, class = c('spin', 'htmlwidget'))
}

#' @export
spinOutput <- htmlwidgets::widgetOutput('spin')


