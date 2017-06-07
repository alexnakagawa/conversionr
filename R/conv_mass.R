#' Convert between kilograms, pounds, ounces, and stones.
#'
#' @param num the amount of the unit you want to onvert.
#' @param from the original unit.
#' @param to the unit you want to convert to
#' @return data frame of converted value and unit.
#' @details num: a positive number
#' @details from: the original unit. To enter kilograms type "kg" or "kilogram". To enter pounds type "lb" or "pound". To enter ounces type "oz" or "ounce". To enter stones type "st" or "stone"
#' @details to: the unit you want to convert to. To enter kilograms type "kg" or "kilogram". To enter pounds type "lb" or "pound". To enter ounces type "oz" or "ounce". To enter stones type "st" or "stone"
#' @examples
#' conv_mass(4, "kg", "lbs")
#' conv_mass(25, "st", "ounces")
#' @export

conv_mass = function( num, from = "", to = "") {
  if(from == "kg" | from == "kilogram") {
    if(to == "lb" | to == "pound")
      return(data.frame( num = num*2.20462, unit = to))
    else if (to == "oz" | to == "ounce")
      return(data.frame( num = num*35.274, unit = to))
    else if(to == "st" | to == "stone")
      return(data.frame(num = num*.157473, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "lb" | from == "pound") {
    if(to == "kg" | to == "kilogram")
      return(data.frame(num = num*0.453592, unit = to))
    else if (to == "oz" | to == "ounce")
      return(data.frame(num = num*16, unit = to))
    else if(to == "st" | to == "stone")
      return(data.frame(num = num*0.0714286, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "oz" | from == "ounce") {
    if(to == "kg" | to == "kilogram")
      return(data.frame(num = num*0.0283495, unit = to))
    else if (to == "lb" | to == "pound")
      return(data.frame(num = num*0.0625, unit = to))
    else if(to == "st" | to == "stone")
      return(data.frame(num = num*0.00446429, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else if(from == "st" | from == "stone") {
    if(to == "kg" | to == "kilogram")
      return(data.frame(num = num*6.35029, unit = to))
    else if (to == "lb" | to == "pound")
      return(data.frame(num = num*14, unit = to))
    else if(to == "oz" | to == "ounce")
      return(data.frame(num = num*224, unit = to))
    else
      stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
  }
  else
    stop("Invalid 'from' variable format. Check documentation")
}
