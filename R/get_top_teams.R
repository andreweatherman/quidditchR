#' Get top teams by stat
#'
#' Returns top teams by offensive or defensive goals
#'
#'
get_top_teams <- function(stat) {

  index = dplyr::case_when(
    stat == 'off' ~ 8,
    stat == 'def' ~ 10,
    stat == 'diff' ~ 12
  )

  tab <- stats_archive_url %>%
    rvest::read_html() %>%
    rvest::html_table() %>%
    purrr::pluck(index) %>%
    janitor::clean_names()

  return(tab)
}
