library(tidyverse)

d1 <- read_csv("data/flood_control/Sumbong_FloodControl.csv")
d2 <- read_csv("data/comelec_fiscal/COMELEC_Fiscal.csv")

# compute durations
d1 <- d1 %>%
  mutate(StartDate = as.Date(StartDate, format="%m/%d/%y"),
         CompletionDateActual = as.Date(CompletionDateActual, format="%m/%d/%y"),
         duration_days = as.numeric(CompletionDateActual - StartDate))

# vote share
d2 <- d2 %>%
  mutate(vote_share = votes / totvot,
         ira_share = ira / lgusincome)

# preview
head(d1)
head(d2)
