#For the input i would expect to put the column data x axis to be carapace length with y axis being carapace width. 
#I would expect the output to be various dots scattered distributing the varied length x width patterns of the crab data.
#I would set this plot up to see the overall snapshot picture of overall size of these crabs in relation to length and width dimensions.  



crab_plot <- function(., carapace_length, carapace_width){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
  }
  

plot_scatter <- ggplot(data = crabs_data, mapping = aes(x = carapace_length, y = carapace_width)) +
  geom_point()

return(plot_scatter)
}

crabs_data%>%
  select(carapace_length, carapace_width)%>%
  crab_plot(carapace_length = carapace_length, carapace_width = carapace_width)
