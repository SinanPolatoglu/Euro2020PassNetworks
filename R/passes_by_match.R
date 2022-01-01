#' Obtain passing networks for both teams by match
#'
#' @param home_team Name of home team
#' @param away_team Name of away team
#' @return Named list of two igraph objects.
#' @importFrom stats setNames
#' @examples
#' \dontrun{
#' passes_by_match('Italy', 'England')
#' }
#' @export
passes_by_match <- function(home_team, away_team) {
  matched_row = PassNetworks[
    PassNetworks$home == home_team &
    PassNetworks$away == away_team,
  ]
  n_matched_games = nrow(matched_row)
  stopifnot(n_matched_games == 1)

  return(setNames(
    list(matched_row$home_graph[[1]], matched_row$away_graph[[1]]),
    c(home_team, away_team)
  ))
}
