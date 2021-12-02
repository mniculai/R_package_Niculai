# This file would contain the linear model for linear regression looking at the relationship between two variables 
# the inputs would be the linear regression between carapace_length and body depth to plot the visual model and obtain data on relationship. 
#output would be a visual plot of the relationship as well as a summary table of the data to determine relationship with residuals & coefficients.  


crab_regression <- function(.,carapace_length, body_depth){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
}




plot_regression <- ggplot(., aes(x = carapace_length, y = body_depth)) + geom_point(size=.25) + geom_smooth(method = "lm",color= "blue", size=.5, fill="black")

return(plot_regression)
}

crabs_data%>%
  select(carapace_length, body_depth)%>%
  crab_regression(carapace_length = carapace_length, body_depth = body_depth)
