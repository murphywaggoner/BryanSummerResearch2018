# some examples of dplyr and ggplot

DSSurvey %>%
  select(starts_with("DS"))

DSSurvey %>%
  select(contains("respond")) %>% 
  summary()

DSSurvey %>%
  slice(12)

DSSurvey %>% 
  ggplot(aes(x = visitstotal, y = clinicdistance, color =  gender_DS)) +
  geom_point() +   
  geom_jitter() +
  facet_wrap(~ income)

DSSurvey$test = factor("Public", levels = c("Public", "Private", "None", "Both"))

DSSurvey %>% 
  select(insurance, insurance2) %>% 
  mutate(insurance = if_else(!is.na(insurance2) & 
                          str_detect(insurance2, "Medicare"),
                        "Public",
                        insurance)  )
         



## Play time plots

DSSurvey %>% 
  ggplot(aes(x = visitstotal, y = clinicdistance, color =  gender_DS)) +
  geom_point() +   
  geom_jitter() +
  facet_wrap(~ income)


