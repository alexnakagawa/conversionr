#' Convert metric units of distance between each other. The basic unit of distance is centimeters, expressed as 'cm'. Examples listed below.
#'
#' @param num The decimal number units of the 'from' units. Can also pass as vector.
#' @param from The initial units before conversion, taken as a character. Includes: ft, m, mi, yard, in
#' @param to The desired units after conversion, taken as a character. Includes: ft, m, mi, yard, in
#' @return A decimal (or vector) displaying the number of 'to' units
#' @examples
#' conv_dist(15, 'ft', 'km')
#' conv_dist(60, to = 'dm' )
#' @export
conv_dist <- function(num, from, to) {
  if (from == 'ft') {
    if (to == 'm') {
      num * 0.3048
    } else if (to == 'in') {
      num * 12
    } else if (to == 'yd') {
      num / 3
    } else if (to == 'mi') {
      num * 0.000189394
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'yd') {
    if (to == 'm') {
      num * 0.9144
    } else if (to == 'in') {
      num * 36
    } else if (to == 'ft') {
      num * 3
    } else if (to == 'mi') {
      num / 1760
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'in') {
    if (to == 'm') {
      num * 0.3048
    } else if (to == 'ft') {
      num / 12
    } else if (to == 'yard') {
      num / 36
    } else if (to == 'mi') {
      num * 1.57828e-5
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'mi') {
    if (to == 'm') {
      num * 1609.34
    } else if (to == 'in') {
      num * 63360
    } else if (to == 'yard') {
      num * 1760
    } else if (to == 'ft') {
      num * 5280
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == "m") {
    if (to == 'ft') {
      num * 3.28084
    } else if (to == 'in') {
      num * 39.3701
    } else if (to == 'yard') {
      num * 1.09361
    } else if (to == 'mi') {
      num * 0.000621371
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else {
    stop('Invalid unit type in \'from\'.', call. = FALSE)
  }
}
