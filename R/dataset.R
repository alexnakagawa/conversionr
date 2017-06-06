#' Dataset to test the functionality of each function of the conversionr R package.
#'
#' Tracks the running workout of 5 people throughout a single day. It is initially tracked in miles per hour,
#' but the runners from South Africa have complained that the imperial system is a mess and they would
#' prefer the metrics in kilometers.
#'
#' @format A data frame with 5 records and 4 variables:
#' \describe{
#'   \item{names}{name of runner;}
#'   \item{dist_mi}{length of run in miles;}
#'   \item{temp_f}{temperature in fahrenheit during the workout}
#'   \item{vol_gal}{the volume of water consumed by each person during the workout.}
#'   \item{times}{The time in hours of the workout for each person;}
#'   \item{dist_km}{length of run in kilometers;}
#' }
#'
#' @examples
#' plot(dist_mi ~ time, data = datasets)
"marathon_training"

names = c('Alex Nakagawa', 'Billy Cook', 'Joe Smith', 'Emerson Doyle', 'Stephanie Cowen')
dist_mi = c(1.56, 4.00, 2.95, 6.90, 10.12)
temp_f = c(60, 82, 41, 50, 93)
vol_gal = c(3.23, 7.20, 3.01, 3.12, 8.00)
times = c(4.50, 6.12, 2.02, 4.1, 3.98)

marathon_training = data.frame(names, dist_mi, temp_f, vol_gal, times)

