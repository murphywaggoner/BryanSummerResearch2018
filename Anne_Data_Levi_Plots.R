

DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Dress Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Reading and Writing Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Social Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Attend a day program Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Self care Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Catatonia Regression vs. Clinic visits')


DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Dress Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Reading and Writing Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Social Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Attend a day program Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Self care Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Catatonia Regression vs. Clinic visits vs. Sleep apnea')


DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Dress Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Reading and Writing Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Social Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Attend a day program Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Self care Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Catatonia Regression vs. Clinic visits')


DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Dress Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Reading and Writing Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Social Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Attend a day program Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Self care Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Catatonia Regression vs. Clinic visits vs. Sleep apnea')





