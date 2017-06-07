#' Converts between milli, centi, base, and kilo
#'
#' @param num the amount of the unit you want to onvert.
#' @param from the prefix of the original unit
#' @param to the prefix you want to convert to
#' @return data frame with the converted value and prefix.
#' @details num: a positive number
#' @details from: prefix of the original unit. "milli" for milli-. "centi" for centi-. "base" for the base unit. "kilo" for kilo-.
#' @details to: prefix of the unit you want to convert to. "milli" for milli-. "centi" for centi-. "base" for the base unit. "kilo" for kilo-.
#' @examples
#' conv_metric(4,"centi", "milli" )
#' conv_metric(25, "base", "kilo" )
#' @export

conv_metric = function( num, from = "", to = "") {
  if(from == "milli") {
    if(to == "centi")
      return(data.frame( num = as.numeric(unlist(num))*.1, unit = to))
    else if (to == "base")
      return(data.frame( num = as.numeric(unlist(num))*0.001, unit = to))
    else if(to == "kilo")
      return(data.frame(num = as.numeric(unlist(num))*0.000001, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "centi") {
    if(to == "milli" | to == "milli")
      return(data.frame(num = as.numeric(unlist(num))*10, unit = to))
    else if (to == "base")
      return(data.frame(num = as.numeric(unlist(num))*0.01, unit = to))
    else if(to == "kilo")
      return(data.frame(num = as.numeric(unlist(num))*0.00001, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "base") {
    if(to == "milli")
      return(data.frame(num = as.numeric(unlist(num))*1000, unit = to))
    else if (to == "centi")
      return(data.frame(num = as.numeric(unlist(num))*100, unit = to))
    else if(to == "kilo")
      return(data.frame(num = as.numeric(unlist(num))*0.001, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "kilo") {
    if(to == "milli")
      return(data.frame(num = as.numeric(unlist(num))*1000000, unit = to))
    else if (to == "centi")
      return(data.frame(num = as.numeric(unlist(num))*100000, unit = to))
    else if(to == "base")
      return(data.frame(num = as.numeric(unlist(num))*1000, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else
    stop("Invalid 'from' variable format. Check documentation")
}

