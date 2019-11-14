#' NYC 311 Service Requests for October 2019 (random sample of 6,789 requests of 174,788 total requests)
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
#' \item{AgencyName}{NYC Agency full name}
#' \item{Type}{Type of complaint.}
#' \item{Descriptor}{Description.}
#' \item{Zip}{ZIP code of complaint.}
#' \item{Status}{Complaint status: Pending, Assigned, Started, In Progress, Open or Closed }
#' \item{Resolution}{Resolution description. }
#' \item{ResolutionUpdated}{Date the Resolution was updated.}
#' \item{Borough}{Borough of NYC}
#' \item{Latitude}{Latitude}
#' \item{Longitude}{Longitude}
#' }
"nyc311"
