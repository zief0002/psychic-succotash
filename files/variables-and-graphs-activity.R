##################################################
### Load libraries
##################################################

library(tidyverse)
library(ggformula)



##################################################
### Import NHANES data
##################################################

nhanes = read_csv("data/nhanes.csv")

# Preview data
nhanes



##################################################
### CATEGORICAL VARIABLE: SUMMARY (Questions 4-6)
##################################################

# Creates a table of counts for the trouble sleeping variable 
df_stats(~trouble_sleeping, data = nhanes, "counts")



##################################################
### CATEGORICAL VARIABLE: GRAPH
##################################################

# Creates a bar graph of trouble sleeping variable 
gf_counts(~trouble_sleeping, data = nhanes)



##################################################
### Question 7
##################################################

# Creates a bar graph of trouble sleeping variable 
gf_props(
  ~trouble_sleeping, 
  data = nhanes,
  xlab = "Does the person have trouble sleeping?",
  ylab = "Proportion"
  )



##################################################
### QUANTITATIVE VARIABLE: SUMMARY (Question 8)
##################################################

df_stats(~vigorous_exercise, data = nhanes)



##################################################
### QUANTITATIVE VARIABLE: GRAPH (Question 9)
##################################################

# Creates a histogram of the exercise variable
gf_histogram(
  ~vigorous_exercise, 
  data = nhanes,
  xlab = "Amount of time spent doing moderate- or vigorous- exercise (in minutes)",
  ylab = "Count",
  color = "blue"
  )



##################################################
### QUANTITATIVE VARIABLE: GRAPH (Question 11)
##################################################

# Creates a histogram of the exercise variable
gf_histogram(
  ~vigorous_exercise, 
  data = nhanes,
  xlab = "Amount of time spent doing moderate- or vigorous- exercise (in minutes)",
  ylab = "Count",
  fill = "blue"
)



##################################################
### QUANTITATIVE VARIABLE: GRAPH (Question 13)
##################################################

# Creates a histogram of the exercise variable
gf_histogram(
  ~vigorous_exercise, 
  data = nhanes,
  xlab = "Amount of time spent doing moderate- or vigorous- exercise (in minutes)",
  ylab = "Count",
  fill = "blue",
  bins = 10
)





