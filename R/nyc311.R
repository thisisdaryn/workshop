#' NYC 311 Service Requests for Jan 1-14 2020
#'
#'
#'
#' @source <https://nycopendata.socrata.com/Social-Services/311-Service-Requests-from-2010-to-Present/erm2-nwe9>
#' @format Data frame with columns
#' \describe{
#' \item{Key}{Case identifier}
#' \item{Created}{Date Created}
#' \item{Closed}{Date Closed}
#' \item{Agency}{NYC Agency Acronym}
#' \item{Type}{Type of complaint}
#' \item{LocType}{Type of location}
#' \item{Zip}{ZIP code of complaint}
#' \item{Status}{Complaint status: Pending, Assigned, Started, In Progress, Open or Closed }
#' \item{Borough}{Borough of NYC}
#' \item{Latitude}{Latitude}
#' \item{Longitude}{Longitude}
#' }
"nyc311"
