#' Get most snitch catches at regionals
#'
#' Returns top snich catches at regionals
#'
#'
get_regional_snitch_catches <- function() {

  tab <- stats_archive_url %>%
    rvest::read_html() %>%
    rvest::html_table() %>%
    purrr::pluck(6) %>%
    janitor::clean_names()

  return(tab)
}
