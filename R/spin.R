#' @export
spin <- function(..., width = NULL, height = NULL){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  htmlwidgets::createWidget( 'spin', params, width = width, height = height )
}


#' @export
spinOutput <- htmlwidgets::makeShinyOutput('spin')

#' @export
renderSpin <- htmlwidgets::makeShinyRender('spin')