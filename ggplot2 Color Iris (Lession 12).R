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
  geom_jitter(size = 5) +
  scale_color_brewer(palette = "Set2") +
  theme_minimal()


### Type - 2  # Take Control

iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width)) +
  geom_jitter(color = "#97B3C6",
              size = 5) +
  theme_minimal()


### Type - 3  # Be Specific
unique(iris$Species)

iris %>% 
  ggplot(aes(Sepal.Length, Sepal.Width,
             color = Species)) +
  geom_jitter(size = 4) +
  scale_color_manual(values = c("setosa" = "blue",
                                "versicolor" = "red",
                                "virginica" = "green")) +
  theme_minimal() 



### Type - 4  # Be even more specific

iris %>%
  ggplot(aes(Sepal.Length, Sepal.Width,
             color = Species))+
  geom_jitter(size = 5, alpha = 0.5)+
  scale_color_manual(values =
                       c("setosa" = "#719AC9",
                         "versicolor" = "#75B99C",
                         "virginica" = "#C98D71"))+
  theme_minimal()
