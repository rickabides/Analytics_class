library(tidyverse)

library(ggplot2)
ggplot2::mpg
str(mpg)
?mpg

ggplot(mpg,aes(x = displ, y = hwy)) +
  geom_point()

mpg %>% ggplot(aes(x = displ, y = hwy)) +
  geom_point()


ggplot(mpg,aes(x = displ, y = hwy)) +
  geom_point(color = "blue")


ggplot(mpg,aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(~ class, nrow = 2)

ggplot(mpg,aes(x = displ, y = hwy)) +
  geom_point() +
  facet_wrap(drv ~ cyl)

ggplot(mpg,aes(x = displ, y = hwy, linetype=drv)) +
  geom_smooth()

ggplot(mpg,aes(x = displ, y = hwy, color=drv)) +
  geom_smooth()

ggplot(mpg,aes(x = displ, y = hwy, linetype=class)) +
  geom_smooth()

ggplot(mpg,aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth()

ggplot(mpg, mapping = aes(x=displ, y=city, color=class)) +
  geom_point() +
  scale_color_brewer(palette = "Set1")

ggplot(mpg,aes(x = hwy)) +
  geom_histogram()


ggplot(mpg,aes(x = class, fill = drv)) +
  geom_bar()

ggplot(mpg,aes(x = displ, y = hwy)) +
  geom_point() +
  coord_cartesian(xlim=c(0,5))

ggplot(mpg, mapping = aes(x=displ, y=hwy)) +
  geom_point() +
  facet_grid(cyl ~ fl)

ggplot(mpg,aes(x = displ, y = cty)) +
  geom_point() +
  facet_wrap(~ class, scales = "free") +
  theme_classic()
      

       