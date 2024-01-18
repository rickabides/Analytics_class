setwd("/Users/rbryce/Documents/MSBA/Analytics_class")
library(readxl)
armands <- read_excel("RacingBicycles.xlsx")
summary(armands)

#Correlation
cor(armands$Weight,armands$Price)

#linear model
armands_lm <- lm(Price ~ Weight, data = armands)
armands_lm$coefficients
summary(armands_lm)

library(tidyverse)
armands %>% ggplot(aes(x = Weight, y = Price)) + 
  geom_point() + # scatter plot
  geom_smooth(method = 'lm', se = TRUE) # ab-line with std. error (gray)

summary(armands_lm)$r.squared
summary(armands_lm)$adj.r.squared

pounds <- 15
slope <- -1439.006
intercept <- 28574.103

pounds*slope+intercept
