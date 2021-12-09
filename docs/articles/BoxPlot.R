#For this box plot i would expect to have the input to be carapace length for x axis and color differentiation for y axis. 
#The expected outcome would be a box plot of two box and whisker plots with blue and orange colors being in the data set.
#These variables where chosen because i wanted to visualize the total size in length between groups based on color to see 
#which color had larger length sizes and the variance in length. 

#'
#'@param . is a piped crabs_data.csv file
#'@param color is a color column in crabs_data.csv
#'@param carapace_length is a carapace_length column in crabs_data.csv
#'@return Returns a box plot model of crabs grouped by color and dispersed by length measurments. 
#' 

boxplot_length <- function(.,color,carapace_length){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
  }
  

plot <- ggplot(data = crabs_data, mapping = aes(x = color, y = carapace_length)) + geom_boxplot(alpha = 0) + geom_jitter(alpha = 0.3, color = "tomato")

return(plot)
}






