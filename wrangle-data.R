library(tidyverse)

murders <- read_csv("data/murders.csv")

murders <- murders %>% mutate(region = factor(region),
                              rate = total/population*10^5)

# Save command saves R objects into rda file, same as RData
save(murders, file = "rdas/murders.rda")
