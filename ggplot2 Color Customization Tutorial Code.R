#install.packages("RColorBrewer")
library(RColorBrewer)
library(tidyverse)


display.brewer.all(colorblindFriendly = TRUE)

?iris
view(iris)
names(iris)

### Type - 1 

iris %>% 
  ggplot(aes(Sepal.Length, Sepal.Width,
             color = Species)) +
  geom_jitter(size = 5, alpha = 0.8) +
  scale_color_brewer(palette = "Set2") +
  theme_test(base_size = 12)


### Type - 2  # Take Control

iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width)) +
  geom_jitter(color = "#A88EF2",
              size = 5, alpha = 0.8) +
  theme_test(base_size = 12)


### Type - 3  # Be Specific
unique(iris$Species)

iris %>% 
  ggplot(aes(Sepal.Length, Sepal.Width,
             color = Species)) +
  geom_jitter(size = 5, alpha = 0.8) +
  scale_color_manual(values = c("setosa" = "purple",
                                "versicolor" = "black",
                                "virginica" = "green")) +
  theme_test(base_size = 12) 



### Type - 4  # Be even more specific

iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width,
             color = Species))+
  geom_jitter(size = 5, alpha = 0.8)+
  scale_color_manual(values =
                       c("setosa" = "#A88EF2",
                         "versicolor" = "#FFB222",
                         "virginica" = "#D5A5E2"))+
  theme_test(base_size = 12)
