#' Make a correction template file
#' 
#' @param path path for the correction template file
#' @importFrom readr write_lines 
#' @export 
 

cc_make_template <- function(path = "correction_template.csv"){
 
  headers <- c("siteID", "turfID", "year", 
               "species_old", "species_new", "cover_new",
               "clone_target",
               "rotate", "comment")
  instructions <- "# Read instruction in vignette for how corrections should be entered"
  instructions <- c(instructions, "")
  write_lines(instructions, path = path)
  write_lines(paste(headers, collapse = ","), path = path, append = TRUE)
}