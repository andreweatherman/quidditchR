#' Get most ISR catches at regionals
#'
#' Returns top ISR catch rate at regionals
#'
#'
get_regional_isr_catches <- function() {

  tab <- stats_archive_url %>%
    rvest::read_html() %>%
    rvest::html_table() %>%
    purrr::pluck(4) %>%
    janitor::clean_names() %>%
    dplyr::mutate(
      catches = as.numeric(gsub('/.*', '', catch_games_played)),
      gp = as.numeric(gsub('.*/', '', catch_games_played)),
      catch_pct = catches / gp
    ) %>%
    dplyr::select(-c(3:4))

  return(tab)
}
