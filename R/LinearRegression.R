# This file would contain the linear model for linear regression looking at the relationship between two variables 
# the inputs would be the linear regression between carapace_length and body depth to plot the visual model and obtain data on relationship. 

#'
#'@param . is a piped crabs_data.csv file with carapace_length and body_depth selected and grouped
#'@param carapace_length is data in column from crabs_data.csv
#'@param hindfoot_length is a hindfoot_length column data from crabs_data.csv
#'@return Returns a linear regression model of carapace_length and body_depth, with length in
#'x axis, and depth in y axis
#'



crab_regression <- function(.,carapace_length, body_depth){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
}




plot_regression <- ggplot(., aes(x = carapace_length, y = body_depth)) + geom_point(size=.25) + geom_smooth(method = "lm",color= "blue", size=.5, fill="black")

return(plot_regression)
}


