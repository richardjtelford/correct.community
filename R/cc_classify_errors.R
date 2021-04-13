#' Classify errors
#' @importFrom dplyr mutate filter %>% case_when
#' @importFrom glue glue
#' @export

cc_classify_errors <- function(cc){
  cc %>% 
    mutate(type = case_when(
      !is.na(rotate) ~ "rotate",
      is.na(year) & is.na(turfID) & !is.na(siteID) ~ "site",
      !is.na(year) & is.na(turfID) & !is.na(siteID) ~ "site_year",
      is.na(year) & !is.na(turfID)  ~ "turf_year",
      TRUE ~ "unidentified"
      
    ))
  
  #check for unidentified rows
  uni <- filter(cc, type == "unidentified")
  if(nrow(uni > 0){
    stop(glue("There are {nrow(uni)} unidentified rows. Please fix these."))
         
  }
  
}
