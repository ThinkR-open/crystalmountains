#' A module template
#'
#' This template will add a module skeleton.
#'
#' @param name,path,... Arg passed from golem::add_module
#'
#' @return
#' @export
#'
#' @examples
#' if (interactive()){
#'   golem::add_module(
#'       name = "custom",
#'       module_template = module_template
#'   )
#' }
module_template <- function(name, path, ...){
  # Define a template that only write the name of the
  # module in the file
  template <- readLines(
    system.file(
      "module", package = "crystalmountains"
    )
  )
  template <- gsub("%%MODULE%%", name, template)
  for (i in template){
    write(i, path, append = TRUE)
  }

}
