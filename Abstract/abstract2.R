library(tidyverse)
png("abstract22.png", units="px", width=1600, height=1600, res=300)
seq(-3,3,by=.01) %>%
  expand.grid(x=., y=.) %>%
  ggplot(aes(x=(x^3-sin(y^3)), y=(y^3-cos(x^3)))) +
  geom_point(alpha=.2, shape=20, size=0, color="white")+
  theme_void()+
  coord_fixed()+
  theme(panel.background = element_rect(fill="black"))+
  coord_polar()

