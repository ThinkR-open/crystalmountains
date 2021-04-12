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
  unlink("R/app_ui.R", TRUE, TRUE)
  file.copy(
    system.file(
      "app_ui", package = "crystalmountains"
    ),
    "R/app_ui.R"
  )
  unlink("R/app_server.R", TRUE, TRUE)
  file.copy(
    system.file(
      "app_server", package = "crystalmountains"
    ),
    "R/app_server.R"
  )
}
