#' Get date range for stats
#'
#' Returns month that returned stats are updated through

get_stats_range <- function() {

  top_line <- stats_archive_url %>%
    rvest::read_html() %>%
    rvest::html_nodes('#block-yui_3_17_2_1_1612204049792_5138 .sqsrte-large') %>%
    rvest::html_text()

  tib <- dplyr::tibble(
    'get_regional_records' = top_line,
    'get_regional_isr_catches' = top_line,
    'get_regional_snitch_catches' = top_line
  )

  return(tib)

}
