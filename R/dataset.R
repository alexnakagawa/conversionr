#' Dataset to test the functionality of each function of the conversionr R package.
#'
#' Tracks the running workout of 5 people throughout a single day. It is initially tracked in miles per hour,
#' but the runners from South Africa have complained that the imperial system is a mess and they would
#' prefer the metrics in kilometers.
#'
#' @format A data frame with 5 records and 8 variables:
#' \describe{
#'   \item{names}{name of runner;}
#'   \item{dist_mi}{length of run in miles;}
#'   \item{temp_f}{temperature in fahrenheit during the workout;}
#'   \item{vol_gal}{the volume of water consumed by each person during the workout;}
#'   \item{times}{The time in hours of the workout for each person;}
#'   \item{dist_km}{length of run in kilometers;}
#'   \item{temp_c}{temperature in celsius during the workout;}
#'   \item{vol_L}{the volume in liters of water consumed by each person during the workout;}
#' }
#'
#' @examples
#' plot(dist_mi ~ times, data = marathon_training)
#' plot(kms ~ times, data = marathon_training)
#' plot(temp_f ~ vol_gal, data = marathon_training)
#' plot(temp_c ~ vol_L, data = marathon_training)
"marathon_training"

names = c('Alex Nakagawa', 'Billy Cook', 'Joe Smith', 'Emerson Doyle', 'Stephanie Cowen')
dist_mi = c(1.56, 4.00, 2.95, 6.90, 10.12)
temp_f = c(60, 82, 41, 50, 93)
vol_gal = c(3.23, 7.20, 3.01, 3.12, 8.00)
times = c(4.50, 6.12, 2.02, 4.1, 3.98)

marathon_training = data.frame(names, dist_mi, temp_f, vol_gal, times)
marathon_training
dist_km = conv_metric((as.vector(conv_dist(dist_mi, 'mi', 'm'))), 'base', 'kilo')[, 1]
marathon_training = cbind(marathon_training, dist_km)

temp_c = as.vector(conv_temp(temp_f, 'f', 'c'))[, 1]
marathon_training = cbind(marathon_training, temp_c)

vol_L = as.vector(conv_vol(vol_gal, 'gal', 'l'))[, 1]
marathon_training = cbind(marathon_training, vol_L)


