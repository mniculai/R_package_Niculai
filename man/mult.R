#'multipy together two numbers
#'
#'@param x A number
#'@param y Another number
#'@param product The product of multiplying x and y
#'@usage 
#'mult(4,5)




mult <- function(x,y){
  product <- x*y
  is.numeric(product)
  if(is.numeric(product) == FALSE){
    return("Error - non-numeric")
  }
  return(product)
}