#' @export
spin <- function(...){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  htmlwidgets::createWidget( 'spin', params )
}

#' @export
spinOutput <- htmlwidgets::makeShinyOutput('spin')

#' @export
renderSpin <- htmlwidgets::makeShinyRender('spin')