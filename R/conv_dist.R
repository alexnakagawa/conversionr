#' Convert metric units of distance between each other. The basic unit of distance is centimeters, expressed as 'cm'. Examples listed below.
#'
#' @param num The decimal number units of the 'from' units. Can also pass as vector.
#' @param from The initial units before conversion, taken as a character. Includes: ft, m, mi, yard, in
#' @param to The desired units after conversion, taken as a character. Includes: ft, m, mi, yard, in
#' @return A decimal (or vector) displaying the number of 'to' units
#' @examples
#' conv_dist(15, 'ft', 'm')
#' conv_dist(60, 'yd', 'm' )
#' @export
conv_dist <- function(num, from, to) {
  if (from == 'ft' | from == 'feet' | from == 'foot') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      num * 0.3048
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      num * 12
    } else if (to == 'yd' | to == 'yard' | to == 'yards') {
      num / 3
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      num * 0.000189394
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'yd' | from == 'yard' | from == 'yards') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      num * 0.9144
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      num * 36
    } else if (to == 'ft' | to == 'feet' | to == 'foot') {
      num * 3
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      num / 1760
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'in' | from == 'inches' | from == 'inch') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      num * 0.3048
    } else if (to == 'ft' | to == 'feet' | to == 'foot') {
      num / 12
    } else if (to == 'yd' | to == 'yard' | to == 'yards') {
      num / 36
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      num * 1.57828e-5
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'mi' | from == 'miles' | from == 'mile') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      num * 1609.34
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      num * 63360
    } else if (to == 'yd' | to == 'yard' | to == 'yards') {
      num * 1760
    } else if (to == 'ft' | to == 'feet' | to == 'foot') {
      num * 5280
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == "m" | from == 'meters' | from == 'meter') {
    if (to == 'ft' | to == 'feet' | to == 'foot') {
      num * 3.28084
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      num * 39.3701
    } else if (to == 'yd' | to == 'yard' | 'yards') {
      num * 1.09361
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      num * 0.000621371
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else {
    stop('Invalid unit type in \'from\'.', call. = FALSE)
  }
}
