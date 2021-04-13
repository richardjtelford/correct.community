#' Validate correction file
#' 
#' @param cc data.frame of corrections
#' @param comm community dataframe
#' @param taxa vector of good taxa
#' @importFrom assertr assert in_set chain_start chain_end
#' @importFrom dplyr %>%
#' @export

cc_validate <- function(cc, comm, taxa){

  cc %>% 
    chain_start() %>% 
    # check sites
    assert(in_set(unique(comm$siteID)), siteID) %>% 
    # check turfID
    assert(in_set(unique(comm$turfID)), turfID) %>% 
    # check year
    assert(in_set(unique(comm$year)), year) %>% 
    # check old taxa
    assert(in_set(unique(comm$species)), species_old) %>% 
    # check old taxa
    assert(in_set(taxa), species_new) %>% 
    # check rotate
    assert(in_set(c("t", "90", "-90", "180")), rotate)
    chain_end()
    
  
  
  
}