library(tidyverse)
seq(-3,3,by=.01) %>%
  expand.grid(x=., y=.) %>%
  #png("~/Dropbox/Research/Personal/GitHubProject/AccidentalArt/Abstract/abstract3.png", units="px", width=1600, height=1600, res=300)
  ggplot(aes(x=(x^4-sin(y^6)), y=(y^4-cos(x^6)))) +
  geom_point(alpha=.2, shape=20, size=0, color="black")+
  theme_void()+
  #coord_fixed()+
  theme(panel.background = element_rect(fill="white"))+
  coord_polar()

