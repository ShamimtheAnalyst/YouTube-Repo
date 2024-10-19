my_data <- read.csv("friends.csv")


head(my_data)

tail(my_data)

View(my_data)






# Rows and Columns Extraction Process

my_data[1, 4]

my_data[ , 4]

my_data$Size

#### Data Manipulation using tidyverse package

install.packages("tidyverse")

library(tidyverse)


my_data %>% 
  select(Name, Age, Height) %>% 
  filter(Age < 50 & Height > 1.55) %>% 
  arrange(Height)







