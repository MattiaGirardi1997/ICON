#####ICON_data#####
#' Details about ICON datasets
#'
#' Data frame containing relevant details of each network dataset included
#' in the ICON R package.
#'
#' Citation:
#' Aaron Clauset, Ellen Tucker, and Matthias Sainz, "The Colorado Index of
#' Complex Networks." https://icon.colorado.edu/ (2016).
#'
#' Raoul R. Wadhwa and Jacob G. Scott, "ICON" R package.
#' https://cran.r-project.org/package=ICON (2019).
#'
#' @format A data frame with 10 columns and 22 rows:
#' \describe{
#'   \item{Var_name}{character; variable name to access dataset in R}
#'   \item{Edges}{integer; number of edges in network}
#'   \item{Directed}{logical; 0 if undirected network, 1 if directed}
#'   \item{Weighted}{logical; 0 if unweighted network, 1 if weighted}
#'   \item{Name}{character; network title}
#'   \item{Year}{integer; year network was published/released}
#'   \item{Source}{character; usually URL to access raw network data}
#'   \item{Description}{character; short description of network}
#'   \item{Citation}{character; how to cite network if used}
#' }
#' @source \url{https://icon.colorado.edu}
"ICON_data"
