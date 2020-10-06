library(tidyverse)
library(ggpubr)
daimler <- read_csv("~/R/Kurse/DAI.DE.csv")
dbank <- read_csv("~/R/Kurse/DB.csv")
p1 <- ggplot(data = daimler)+
  geom_point(mapping = aes(x=Date, y=Close))
p2 <- ggplot(data = dbank)+
  geom_point(mapping = aes(x=Date, y=Close))
ggarrange(p1,p2)