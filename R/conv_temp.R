#' Convert between between celsius, kelvin and fahrenheit. 
#'
#' @param num the amount of the unit you want to onvert.
#' @param from the original unit.
#' @param to the unit you want to convert to
#' @return data frame of converted value and unit.
#' @details num: a positive number
#' @details from: the original unit. To enter celsius type "c" or "celsius". To enter kelvin type "k" or "kelvin". To enter fahrenheit type "f" or "fahrenheit". 
#' @details to: the unit you want to convert to. To enter celsius type "c" or "celsius". To enter kelvin type "k" or "kelvin". To enter fahrenheit type "f" or "fahrenheit". 
#' @examples
#' conv_temp(30, "c", "kelvin")
#' conv_tem(100, "f", "celsius")
#' @export

conv_temp = function( num, from = "", to = "") {
  if(num < 0 | from == "" | to == "" )
    stop("Invalid Input! Check documentation", call. = FALSE)
  else {
    if(from == "c" | from == "celsius") {
      if(to == "k" | to == "kelvin")
        return(data.frame( num = num+273.15, unit = to))
      else if (to == "f" | to == "fahrenheit")
        return(data.frame( num = ((num*1.8)+32), unit = to))
        else
        stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
    }
    else if(from == "k" | from == "kelvin") {
      if(to == "c" | to == "celsius")
        return(data.frame(num = num-273.15, unit = to))
      else if (to == "f" | to == "fahrenheit")
        return(data.frame(num = ((num-273.15)*1.8+32), unit = to))
        else
        stop("Invalid 'to' variable format. Check documenation", call. = FALSE)
    }
    else if(from == "f" | from == "fahrenheit") {
      if(to == "c" | to == "celsius")
        return(data.frame(num = (num-32)*0.5555, unit = to))
      else if (to == "k" | to == "kelvin")
        return(data.frame(num = ((num-32)*0.5555+273.15), unit = to))
      else
        stop("Invalid 'to' variable format. Check documenation", call. = FALSE)

    }
    else
      stop("Invalid 'from' variable format. Check documentation")
  }
