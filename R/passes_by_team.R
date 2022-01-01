#' Obtain passing networks for all the matches of a team
#'
#' @param team Name of team to return passing networks for
#' @return Named list of n igraph objects sorted by matchday.
#' @examples
#' \dontrun{
#' passes_by_team('Italy')
#' }
#' @export
passes_by_team <- function(team) {

  NetworksOfTeam = PassNetworks[
    PassNetworks$home == team |
    PassNetworks$away == team ,
  ]

  n_matched_games = nrow(NetworksOfTeam)
  stopifnot(n_matched_games > 0)

  NetworksOfTeam$team_loc = ifelse(NetworksOfTeam$home==team, 'home', 'away')
  NetworksOfTeam$opponent_name = ifelse(NetworksOfTeam$team_loc == 'home', NetworksOfTeam$away, NetworksOfTeam$home)
  NetworksOfTeam$graph_of_team = ifelse(NetworksOfTeam$team_loc == 'home', NetworksOfTeam$home_graph, NetworksOfTeam$away_graph)

  setNames(NetworksOfTeam$graph_of_team, NetworksOfTeam$opponent_name)
}
