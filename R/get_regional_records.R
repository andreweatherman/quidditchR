#' Get top regional championship records
#'
#' Returns regional championship records for the top ten teams nationally
#'
#'
get_regional_records <- function() {

  tab <- stats_archive_url %>%
    rvest::read_html() %>%
    rvest::html_table() %>%
    purrr::pluck(2) %>%
    janitor::clean_names() %>%
    dplyr::mutate(
      wins = as.numeric(gsub('-.*', '', record)),
      losses = as.numeric(gsub('.*-', '', record)),
      wp = wins / (wins + losses)
    ) %>%
    dplyr::select(-c(3:4))

  return(tab)
}
