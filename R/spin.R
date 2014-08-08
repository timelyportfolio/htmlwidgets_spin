#' @export
#' @import htmltools
#' @import htmlwidgets
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  htmlwidgets::createWidget( 'spin', params )
}

#' @export
spinOutput <- htmlwidgets::makeShinyOutput('spin')
renderSpin <- htmlwidgets::makeShinyRender('spin')

