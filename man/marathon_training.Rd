% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataset.R
\docType{data}
\name{marathon_training}
\alias{marathon_training}
\title{Dataset to test the functionality of each function of the conversionr R package.}
\format{A data frame with 5 records and 4 variables:
\describe{
  \item{names}{name of runner;}
  \item{dist_mi}{length of run in miles;}
  \item{temp_f}{temperature in fahrenheit during the workout}
  \item{vol_gal}{the volume of water consumed by each person during the workout.}
  \item{times}{The time in hours of the workout for each person;}
  \item{dist_km}{length of run in kilometers;}
}}
\usage{
marathon_training
}
\description{
Tracks the running workout of 5 people throughout a single day. It is initially tracked in miles per hour,
but the runners from South Africa have complained that the imperial system is a mess and they would
prefer the metrics in kilometers.
}
\examples{
plot(dist_mi ~ time, data = datasets)
}
\keyword{datasets}
