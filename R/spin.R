#' @export
spin <- function(..., width = NULL, height = NULL){
  params <-  list(...)
  params = Filter(Negate(is.null), params)
  htmlwidgets::createWidget( 'spin', params, width = width, height = height )
}


#' @export
spinOutput <- function( outputId, width = "100%", height = "200px" ){
  shinyWidgetOutput( outputId, 'spin', height, width, package = "spin" )
}

#' @export
renderSpin <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  shinyRenderWidget(expr, spinOutput, env, quoted = TRUE)
}