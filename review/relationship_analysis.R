install.packages("devtools")
devtools::install_github("ebbertd/chisq.posthoc.test") # Suggested by Reviewer 1
library(readxl)
library(chisq.posthoc.test)

###############
# Performance #
###############
# Pick up spacer
performance_analysis <- read_excel("performance_analysis.xlsx", 
                                   sheet = "Pick up Spacer", col_names = TRUE, col_types = c("text", "numeric", "numeric"))
pick_up_spacer <- performance_analysis[,-1]
results <- chisq.test(pick_up_spacer)
print(results)

# Place spacer
performance_analysis <- read_excel("performance_analysis.xlsx", 
                                   sheet = "Place Spacer", col_names = TRUE, col_types = c("text", "numeric", "numeric"))
place_spacer <- performance_analysis[,-1]
results <- chisq.test(place_spacer)
print(results)

# Pick up gear
performance_analysis <- read_excel("performance_analysis.xlsx", 
                                   sheet = "Pick up Gear", col_names = TRUE, col_types = c("text", "numeric", "numeric"))
pick_up_gear <- performance_analysis[,-1]
results <- chisq.test(pick_up_gear)
print(results)

# Place gear
performance_analysis <- read_excel("performance_analysis.xlsx", 
                                   sheet = "Place Gear", col_names = TRUE, col_types = c("text", "numeric", "numeric"))
place_gear <- performance_analysis[,-1]
results <- chisq.test(place_gear)
print(results)

# Pick up propeller
performance_analysis <- read_excel("performance_analysis.xlsx", 
                                   sheet = "Pick up Propeller", col_names = TRUE, col_types = c("text", "numeric", "numeric"))
pick_up_propeller <- performance_analysis[,-1]
results <- chisq.test(pick_up_propeller)
print(results)

# Pick up propeller
performance_analysis <- read_excel("performance_analysis.xlsx", 
                                   sheet = "Place Propeller", col_names = TRUE, col_types = c("text", "numeric", "numeric"))
place_propeller <- performance_analysis[,-1]
results <- chisq.test(place_propeller)
print(results)

################
# Demographics #
################
relationship_analysis <- read.csv("relationship_analysis.csv", header=TRUE)

# Block-based experience
block_based_experience <- table(relationship_analysis$block_based_exp, relationship_analysis$success)

# Perform chi-square test
result <- chisq.test(block_based_experience)

# Extract and interpret the results
test_statistic <- result$statistic
degrees_of_freedom <- result$parameter
p_value <- result$p.value

# Print the results
print(result)

# Robot programming experience
robot_programming_experience <- table(relationship_analysis$robot_prog_exp, relationship_analysis$success)

# Perform chi-square test
result <- chisq.test(robot_programming_experience)

# Extract and interpret the results
test_statistic <- result$statistic
degrees_of_freedom <- result$parameter
p_value <- result$p.value

# Print the results
print(result)

# General programming experience
general_programming_experience <- table(relationship_analysis$general_prog_exp, relationship_analysis$success)

# Perform chi-square test
result <- chisq.test(general_programming_experience)

# Extract and interpret the results
test_statistic <- result$statistic
degrees_of_freedom <- result$parameter
p_value <- result$p.value

# Print the results
print(result)
