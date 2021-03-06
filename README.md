---
title: "projects"
author: "Maxim Niculai"
date: "12/2/2021"
output:
  pdf_document: default
  html_document: default
  word_document: default
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Installation

First load in common libraries used by this package. 

```{r eval=FALSE}
library(ggplot2)
library(tidyverse)
library(pkgdown)
```

you might need to install some genomics R Packages for this package to run.

now, we install my R package
``````{r eval = FALSE}
devtools::install_github("mniculai/R_package_Niculai")
library(projects)

```

Let us download some crab data for our package: 

```{r eval = FALSE}
download.file(url = "https://raw.githubusercontent.com/mniculai/R_package_Niculai/master/vignettes/Data/crabs_data.csv", destfile = "/cloud/project/data/crabs_data.csv")

```

Now, we read the crab data with the tidyverse library
```{r eval = FALSE}
surveys <- read_csv("data/crabs_data.csv")
```
## Working Example of Functions 

#+ An example of each function and how it works in each function chunk 
#+ Say something about why this is a good thing to do 
#+ Say something about expected outcome 

BOXPLOT Fucntion :

```{r eval = FALSE}
boxplot_length <- function(.,color,carapace_length){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
  }
  

plot <- ggplot(data = crabs_data, mapping = aes(x = color, y = carapace_length)) + geom_boxplot(alpha = 0) + geom_jitter(alpha = 0.3, color = "tomato")

return(plot)
}
```

Output of the boxplot_length function paired with the piped code will return a box plot with carapace length goruped by color. 

```{r eval = FALSE}
crabs_data%>%
select(color,carapace_length)%>%
boxplot_length(color = color, carapace_length = carapace_length)
```

SCATTER PLOT FUNCTION :

```{r eval = FALSE}
crab_plot <- function(., carapace_length, carapace_width){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
  }
  

plot_scatter <- ggplot(data = crabs_data, mapping = aes(x = carapace_length, y = carapace_width)) +
  geom_point()

return(plot_scatter)
}
```

#For the input i would expect to put the column data x axis to be carapace length with y axis being carapace width. 
#I would expect the output to be various dots scattered distributing the varied length x width patterns of the crab data.
#I would set this plot up to see the overall snapshot picture of overall size of these crabs in relation to length and width dimensions.  



```{r eval = FALSE}
crabs_data%>%
select(carapace_length, carapace_width)%>%
crab_plot(carapace_length = carapace_length, carapace_width = carapace_width)
```

liNEAR REGRESSION PLOT: 

```{r eval = FALSE}
crab_regression <- function(.,carapace_length, body_depth){
  if(!is.data.frame(crabs_data)){
    return("this is not a dataframe")
}




plot_regression <- ggplot(., aes(x = carapace_length, y = body_depth)) + geom_point(size=.25) + geom_smooth(method = "lm",color= "blue", size=.5, fill="black")

return(plot_regression)
}
```

# This file would contain the linear model for linear regression looking at the relationship between two variables 
# the inputs would be the linear regression between carapace_length and body depth to plot the visual model and obtain data on relationship. 


```{r eval = FALSE}
crabs_data%>%
select(carapace_length, body_depth)%>%
crab_regression(carapace_length = carapace_length, body_depth = body_depth)
```








