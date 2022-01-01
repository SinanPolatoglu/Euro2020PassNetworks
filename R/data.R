#' UEFA Euro 2020 Match summaries
#'
#' Match-level data for 51 soccer matches played during UEFA Euro 2020
#' @importFrom tibble tibble
#' @format A data drame with 51 rows and 15 variables
#' \describe{
#'   \item{matchday}{numeric from 1 (1st group phase match) to 7 (final)}
#'   \item{date}{date of match}
#'   \item{home}{home team name}
#'   \item{away}{away team name}
#'   \item{sc_home}{number of goals after regular or extended time for the home team}
#'   \item{sc_away}{number of goals after regular or extended time for the away team}
#'   \item{had_penalties}{logical indicator for penalty shootout}
#'   \item{sc_pen_home}{number of score penalties for the home team}
#'   \item{sc_pen_away}{number of score penalties for the away team}
#'   \item{pos_home}{ball posession for the home team}
#'   \item{pos_away}{ball posession for the home team}
#'   \item{total_shots_home}{number of attemtpted shots for the home team}
#'   \item{total_shots_away}{number of attemtpted shots for the away team}
#'   \item{shots_on_target_home}{number of shots on target for the home team}
#'   \item{shots_on_target_away}{number of shots on target for the away team}
#' }
'MatchSummaries'

#' UEFA Euro 2020 Pass networks
#'
#' Match-level passing distributions for 51 soccer matches played during UEFA Euro 2020.
#'
#' @importFrom tibble tibble
#' @importFrom igraph print.igraph
#' @format A data drame with 51 rows and 4 variables
#' \describe{
#'   \item{home}{home team name}
#'   \item{away}{away team name}
#'   \item{home_graph}{
#'   list column with \code{igraph} objects of directed pass networks for the home teams
#'
#'   \bold{Attributes}
#'     \describe{
#'        \item{name}{Player name}
#'        \item{mins_played}{Minutes played until/after subsitution}
#'        \item{pc_long}{Number of completed long passes}
#'        \item{pa_long}{Number of attemted long passes}
#'        \item{pc_medium}{Number of completed medium passes}
#'        \item{pa_medium}{Number of attemted medium passes}
#'        \item{pc_short}{Number of completed short passes}
#'        \item{pa_short}{Number of attemted short passes}
#'        \item{pc_total}{Number of completed passes}
#'        \item{pa_total}{Number of attemted passes}
#'        \item{pass_accuracy_total}{Completed passes / attempted passes}
#'     }
#'   }
#'   \item{away_graph}{eauivalent of home_graph for away team}
#' }
'PassNetworks'

