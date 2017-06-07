#' Convert between liters, gallons, quarts, and pints.
#'
#' @param num the amount of the unit you want to onvert.
#' @param from the original unit.
#' @param to the unit you want to convert to
#' @return data frame of converted value and unit.
#' @details num: a positive number
#' @details from: the original unit. To enter liters type "l" or "liter". To enter gallons type "gal" or "gallon". To enter quarts type "qt" or "quart". To enter pints type "pt" or "pint"
#' @details to: the unit you want to convert to. To enter liters type "l" or "liter". To enter gallons type "gal" or "gallon". To enter quarts type "qt" or "quart". To enter pints type "pt" or "pint"
#' @examples
#' conv_vol(4, "l", "gal")
#' conv_vol(25, "pint", "qt")
#' @export

conv_vol = function(num, from = "", to = "") {
  if(from == "l" | from == "liter") {
    if(to == "gal" | to == "gallon")
      return(data.frame( num = num*0.2641720524, unit = to))
    else if (to == "qt" | to == "quart")
      return(data.frame( num = num*1.0566882094, unit = to))
    else if(to == "pt" | to == "pint")
      return(data.frame(num = num*2.1133764189, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "gal" | from == "gallon") {
    if(to == "l" | to == "liter")
      return(data.frame(num = num*3.785411784, unit = to))
    else if (to == "qt" | to == "quart")
      return(data.frame(num = num*4, unit = to))
    else if(to == "pt" | to == "pint")
      return(data.frame(num = num*8, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "qt" | from == "quart") {
    if(to == "l" | to == "liter")
      return(data.frame(num = num*0.946352946, unit = to))
    else if (to == "gal" | to == "gallon")
      return(data.frame(num = num*0.25, unit = to))
    else if(to == "pt" | to == "pint")
      return(data.frame(num = num*2, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "pt" | from == "pint") {
    if(to == "l" | to == "liter")
      return(data.frame(num = num*0.473176473, unit = to))
    else if (to == "gal" | to == "gallon")
      return(data.frame(num = num*0.125, unit = to))
    else if(to == "qt" | to == "quart")
      return(data.frame(num = num*0.5, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else
    stop("Invalid 'from' variable format. Check documentation")
}

