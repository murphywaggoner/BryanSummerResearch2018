# Catatonia vs alzheimers vs age
DSSurvey %>% 
  
  
  ggplot(aes(x = regress_cat, y = DSage, color = health_ALZ)) +
  geom_point(na.rm = TRUE, size = 1) +
  
  ggtitle('Catatonia vs alzheimers vs age')

# Catatonia vs alzheimers vs age
DSSurvey %>% 
  
  ggplot(aes(x = regress_cat, y = DSage)) +
  geom_point(na.rm = TRUE, size = 1) +
  
  ggtitle('Catatonia vs age')

