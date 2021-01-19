#' JS, CSS templates
#'
#' @param path,... Args passed from golem
#'
#' @export
#' @rdname files
#'
#' @examples
js_file <- function(path, ...) {
  write(
    readLines(
      system.file(
        "jsapi",
        package = "crystalmountains"
      )
    ),
    path,
    append = TRUE
  )
}
#' @export
#' @rdname files
js_handler <- function(path, ...) {
  write(
    readLines(
      system.file(
        "jshandlers",
        package = "crystalmountains"
      )
    ),
    path,
    append = TRUE
  )
}
#' @export
#' @rdname files
css_file <- function(path, ...){
  write(
    readLines(
      system.file(
        "css",
        package = "crystalmountains"
      )
    ),
    path,
    append = TRUE
  )
}
