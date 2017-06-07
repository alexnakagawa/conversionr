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
      return(data.frame(num * 0.3048, unit = to))
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      return(data.frame(num * 12, unit = to))
    } else if (to == 'yd' | to == 'yard' | to == 'yards') {
      return(data.frame(num / 3, unit = to))
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      return(data.frame(num * 0.000189394, unit = to))
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'yd' | from == 'yard' | from == 'yards') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      return(data.frame(num * 0.9144, unit = to))
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      return(data.frame(num * 36, unit = to))
    } else if (to == 'ft' | to == 'feet' | to == 'foot') {
      return(data.frame(num * 3, unit = to))
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      return(data.frame(num / 1760, unit = to))
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'in' | from == 'inches' | from == 'inch') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      return(data.frame(num * 0.3048, unit = to))
    } else if (to == 'ft' | to == 'feet' | to == 'foot') {
      return(data.frame(num / 12, unit = to))
    } else if (to == 'yd' | to == 'yard' | to == 'yards') {
      return(data.frame(num / 36, unit = to))
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      return(data.frame(num * 1.57828e-5, unit = to))
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == 'mi' | from == 'miles' | from == 'mile') {
    if (to == 'm' | to == 'meter' | to == 'meters') {
      return(data.frame(num * 1609.34, unit = to))
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      return(data.frame(num * 63360, unit = to))
    } else if (to == 'yd' | to == 'yard' | to == 'yards') {
      return(data.frame(num * 1760, unit = to))
    } else if (to == 'ft' | to == 'feet' | to == 'foot') {
      return(data.frame(num * 5280, unit = to))
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else if (from == "m" | from == 'meters' | from == 'meter') {
    if (to == 'ft' | to == 'feet' | to == 'foot') {
      return(data.frame(num * 3.28084, unit = to))
    } else if (to == 'in' | to == 'inches' | to == 'inch') {
      return(data.frame(num * 39.3701, unit = to))
    } else if (to == 'yd' | to == 'yard' | 'yards') {
      return(data.frame(num * 1.09361, unit = to))
    } else if (to == 'mi' | to == 'mile' | to == 'miles') {
      return(data.frame(num * 0.000621371, unit = to))
    } else {
      stop('Invalid desired unit conversion.', call. = FALSE)
    }
  } else {
    stop('Invalid unit type in \'from\'.', call. = FALSE)
  }
}
