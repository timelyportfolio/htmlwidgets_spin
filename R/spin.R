#' @export
#' @import htmltools
#' @import htmlwidgets
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  s <- structure(
    params
    , class = c('spin', 'htmlwidget')
  )
  return(s)
}

#' @export
spinOutput <- htmlwidgets::widgetOutput('spin')
