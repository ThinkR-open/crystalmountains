#' A golem hook example
#'
#' This hook will automatically add the MIT licence to the project.
#'
#' @param path,package_name,... args passed to golem_hook
#
#' @export
#' @importFrom usethis use_mit_license
#'
#' @examples
#' if (interactive()) {
#'   golem::create_golem("ici", project_hook = golem_hook)
#' }
golem_hook <- function(path, package_name, ...){
  use_mit_license("Colin Fay")
}
