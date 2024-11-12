

### Data Filtering Pro Tips

install.packages("tidyverse")
require(tidyverse)


view(msleep)

#1 sort out mammals whose are sleep > 18 hours

sleep <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(sleep_total > 18)










#2 sort out mammals whose are sleep < 18 hours 

sleep <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(!sleep_total > 18)



















#3 filter out more than one attributes with filter
# eg. order == "Primates" and bodyweight > 20
# both condition must be fulfilled (, means and)   

sleep <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates", bodywt > 20) 
  #filter(order == "Primates" & bodywt > 20) 


















#4 filter out one or both attributes with filter
# eg. order == "Primates" and bodywt > 20
# at least one criteria should be met (| means or)  

sleep <- msleep %>% 
  select(name, order, bodywt, sleep_total) %>% 
  filter(order == "Primates" | bodywt > 20) 

















#5 or variable using multiple time  


sleep <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(name == "Rabbit" |
           name == "Tiger" |
           name == "Horse")



















#6 Alternate: use of concatenate  

sleep <- msleep %>% 
  select(name, sleep_total) %>% 
  filter(name %in% c("Rabbit", "Tiger", "Horse"))















#7 Selecting a range, we use "Between"    

sleep <- msleep %>% 
  select(name, sleep_total) %>%
  filter(between(sleep_total, 10, 16))
# note: it include 10 and 16 also





















#8 Nearer/Close to
# near 17, how near -> around 0.5

sleep <- msleep %>% 
  select(name, sleep_total) %>%
  filter(near(sleep_total, 17, to = 0.5))















#9 filter missing values/NA   

sleep <- msleep %>% 
  select(name, conservation, sleep_total) %>%
  filter(is.na(conservation))
























#10 filter without missing values/NA   

sleep <- msleep %>% 
  select(name, conservation, sleep_total) %>%
  filter(!is.na(conservation))



