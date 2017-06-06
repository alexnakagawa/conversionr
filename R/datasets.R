#' Datasets to test the functionality of each function of the conversionr R package.
#'
#' The first dataset: Tracks the running workout of 5 people. It is initially tracked in miles per hour,
#' but the runners from South Africa have complained that the imperial system is a mess and they would
#' prefer the metrics in kilometers.
#'
#' @format A data frame with 5 records and 3 variables:
#' \describe{
#'   \item{name}{name of runner;}
#'   \item{dist_mi}{length of run in miles;}
#'   \item{time}{The time in hours of the workout for each person;}
#' }
#'
#' @examples
#' plot(dist_mi ~ time, data = datasets)
"marathon_training"

marathon_training = data.frame(name = character(0), dist_mi = numerical(0), time = )
