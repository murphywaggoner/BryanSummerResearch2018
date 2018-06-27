
#######################################
#
# Initial cleaning of variables that can
# be done in bulk
#



######################################
# Rename the variables and store in a new tibble

DSSurveyraw %>% 
  rename( ID1	=	X__1	,
          ID2	=	X__2	,
          ID3	=	X__3	,
          ID4	=	X__4	,
          ID5	=	X__5	,
          ID6	=	X__6	,
          ID7	=	X__7	,
          ID8	=	X__8	,
          ID9	=	X__9	,
          DSbirthyear	=	X__10	,
          DStype	=	X__11	,
          relationship	=	X__12	,
          independent	=	X__13	,
          guardian	=	X__14	,
          firstnotified	=	X__15	,
          firstnotified2	=	X__16	,
          autism	=	X__17	,
          ADHD	=	X__18	,
          therapy_PT	=	X__19	,
          therapy_OT	=	X__20	,
          therapy_feeding	=	X__21	,
          therapy_speech	=	X__22	,
          therapy_music	=	X__23	,
          therapy_equine	=	X__24	,
          DSeducation	=	X__25	,
          DSvisit	=	X__26	,
          clinic	=	X__27	,
          clinic_noneed	=	X__28	,
          clinic_full	=	X__29	,
          clinic_inaccessible	=	X__30	,
          clinic_notime	=	X__31	,
          clinic_noinsur	=	X__32	,
          clinic_none	=	X__33	,
          clinic_na	=	X__34	,
          clinicdistance	=	X__35	,
          visitstotal	=	X__36	,
          visitsplanned	=	X__37	,
          visitsunplanned	=	X__38	,
          visitsemergency	=	X__39	,
          transporttype	=	X__40	,
          transporttype2	=	X__41	,
          traveltime	=	X__42	,
          insurance	=	X__43	,
          insurance2	=	X__44	,
          treatments	=	X__45	,
          treatments2	=	X__46	,
          health_celiac	=	X__47	,
          health_diabetes	=	X__48	,
          health_leuk	=	X__49	,
          health_apnea	=	X__50	,
          health_lowiron	=	X__51	,
          health_thyroid	=	X__52	,
          health_swallow	=	X__53	,
          health_ALZ	=	X__54	,
          health_hiBP	=	X__55	,
          health_CHD	=	X__56	,
          health_none	=	X__57	,
          health2	=	X__58	,
          diag_celiac	=	X__59	,
          diag_diabetes	=	X__60	,
          diag_leuk	=	X__61	,
          diag_apnea	=	X__62	,
          diag_lowiron	=	X__63	,
          diag_thyroid	=	X__64	,
          diag_swallow	=	X__65	,
          diag_ALZ	=	X__66	,
          diag_hiBP	=	X__67	,
          diag_CHD	=	X__68	,
          diag_other	=	X__69	,
          concern_celiac	=	X__70	,
          concern_diabetes	=	X__71	,
          concern_leuk	=	X__72	,
          concern_apnea	=	X__73	,
          concern_lowiron	=	X__74	,
          concern_thyroid	=	X__75	,
          concern_swallow	=	X__76	,
          concern_ALZ	=	X__77	,
          concern_hiBP	=	X__78	,
          concern_CHD	=	X__79	,
          concern_other	=	X__80	,
          livingsituation	=	X__81	,
          livingsituation2	=	X__82	,
          substance_abuse	=	X__83	,
          substance_abuse2	=	X__84	,
          substance_none	=	X__85	,
          substance_12step	=	X__86	,
          substance_therapy	=	X__87	,
          substance_limit	=	X__88	,
          substance_other	=	X__89	,
          mentaldiag	=	X__90	,
          mentaldiag_OCD	=	X__91	,
          mentaldiag_dep	=	X__92	,
          mentaldiag_anxiety	=	X__93	,
          mentaldiag_bipolar	=	X__94	,
          mentaldiag_schiz	=	X__95	,
          mentaldiag_other	=	X__96	,
          mentaltreat	=	X__97	,
          mentaltreat_cognitive	=	X__98	,
          mentaltreat_group	=	X__99	,
          mentaltreat_drugs	=	X__100	,
          mentaltreat_ECT	=	X__101	,
          mentaltreat_TMS	=	X__102	,
          mentaltreat_noaccess	=	X__103	,
          mentaltreat_other	=	X__104	,
          mental_will_now	=	X__105	,
          mental_will_future	=	X__106	,
          mental_will_untestable	=	X__107	,
          mental_will_side	=	X__108	,
          mental_will_time	=	X__109	,
          mental_will_interact	=	X__110	,
          mental_will_faith	=	X__111	,
          mental_will_culture	=	X__112	,
          mental_will_nomed	=	X__113	,
          mental_will_na	=	X__114	,
          mental_will2	=	X__115	,
          regress	=	X__116	,
          regress_cat	=	X__117	,
          regress_dress	=	X__118	,
          regress_RW	=	X__119	,
          regress_social	=	X__120	,
          regress_attend	=	X__121	,
          regress_selfcare	=	X__122	,
          regress2	=	X__123	,
          sex	=	X__124	,
          sexED_no	=	X__125	,
          sexED_danger	=	X__126	,
          sexED_bound	=	X__127	,
          sexED_prevent	=	X__128	,
          sexED_health	=	X__129	,
          sexED_WS	=	X__130	,
          sexED_other	=	X__131	,
          future_access	=	X__132	,
          future_opps	=	X__133	,
          future_housing	=	X__134	,
          future_employ	=	X__135	,
          future_ALZ	=	X__136	,
          future_woGuardian	=	X__137	,
          healthcare_respond	=	X__138	,
          healthcare_DS	=	X__139	,
          healthcare_group	=	X__140	,
          healthcare_PCP	=	X__141	,
          healthcare_clinic	=	X__142	,
          state_reported	=	X__143	,
          gender_respond	=	X__144	,
          gender_DS	=	X__145	,
          race_respond	=	X__146	,
          race_respond2	=	X__147	,
          language	=	X__148	,
          language2	=	X__149	,
          income	=	X__150	,
          ed_respond	=	X__151	) -> DSSurvey

###############################################
# Remove rows and columns that are untidy or
# contain private information
#

# delete identifier columns and 
# delete rows 2 and 3, which do not contain data
DSSurvey %>% 
  select(-starts_with("ID")) %>% 
  slice(-1:-2) -> 
  DSSurvey

# Add an index column
# and put it first
DSSurvey$index <- 1:nrow(DSSurvey)
DSSurvey %>% 
  select(index, everything()) ->
  DSSurvey



###################################
# Set variable classes
#

# List columns to convert Yes/No responses to logical
logical_cols <- c("ADHD",
                  "autism",
                  "substance_abuse"
)  

# List columns to convert short list responses to factor
factor_cols <- c( "clinic",
                  "diag_ALZ",
                  "diag_apnea",
                  "diag_CHD",
                  "diag_celiac",
                  "diag_diabetes",
                  "diag_hiBP",
                  "diag_leuk",
                  "diag_lowiron",
                  "diag_other",
                  "diag_swallow",
                  "diag_thyroid",
                  "DStype",
                  "firstnotified",
                  "gender_DS",
                  "gender_respond",
                  "guardian",
                  "health2",
                  "insurance",
                  "language",
                  "language2",
                  "livingsituation",
                  "livingsituation2",
                  "mental_will2",
                  "mentaldiag",
                  "mentaldiag_other",
                  "mentaltreat",
                  "mentaltreat_other",
                  "race_respond",
                  "race_respond2",
                  "regress",
                  "regress2",
                  "relationship",
                  "sex",
                  "sexED_other",
                  "substance_abuse2",
                  "transporttype",
                  "transporttype2",
                  "treatments",
                  "treatments2")

# List columns to convert responses to numeric
numeric_cols <- c("concern_ALZ",
                  "concern_apnea",
                  "concern_CHD",
                  "concern_celiac",
                  "concern_diabetes",
                  "concern_hiBP",
                  "concern_leuk",
                  "concern_lowiron",
                  "concern_other",
                  "concern_swallow",
                  "concern_thyroid",
                  "future_access",
                  "future_ALZ",
                  "future_employ",
                  "future_housing",
                  "future_opps",
                  "future_woGuardian",
                  "healthcare_clinic",
                  "healthcare_DS",
                  "healthcare_group",
                  "healthcare_PCP",
                  "healthcare_respond"
                  )

# List columns that should be logical
# and set to TRUE if there is content in the cell
# because they are "choose all that apply" responses
all_that_apply_cols <- c( "clinic_full",
                          "clinic_inaccessible",
                          "clinic_na",
                          "clinic_noinsur",
                          "clinic_none",
                          "clinic_noneed",
                          "clinic_notime",
                          "health_ALZ",
                          "health_apnea",
                          "health_CHD",
                          "health_celiac",
                          "health_diabetes",
                          "health_hiBP",
                          "health_leuk",
                          "health_lowiron",
                          "health_swallow",
                          "health_thyroid",
                          "mental_will_culture",
                          "mental_will_faith",
                          "mental_will_interact",
                          "mental_will_na",
                          "mental_will_nomed",
                          "mental_will_side",
                          "mental_will_time",
                          "mental_will_untestable",
                          "mentaldiag_anxiety",
                          "mentaldiag_bipolar",
                          "mentaldiag_dep",
                          "mentaldiag_OCD",
                          "mentaldiag_schiz",
                          "mentaltreat_cognitive",
                          "mentaltreat_drugs",
                          "mentaltreat_ECT",
                          "mentaltreat_group",
                          "mentaltreat_noaccess",
                          "mentaltreat_other",
                          "mentaltreat_TMS",
                          "regress_attend",
                          "regress_cat",
                          "regress_dress",
                          "regress_RW",
                          "regress_selfcare",
                          "regress_social",
                          "sexED_bound",
                          "sexED_danger",
                          "sexED_health",
                          "sexED_no",
                          "sexED_prevent",
                          "sexED_WS",
                          "substance_12step",
                          "substance_limit",
                          "substance_other",
                          "substance_therapy"
                          )

# Columns where unsure = NA
unsure_cols <- c( "therapy_PT",
                  "therapy_OT",
                  "therapy_feeding",
                  "therapy_speech",
                  "therapy_music",
                  "therapy_equine"
                  )

# Make the conversions needed on the lists above
DSSurvey %>% 
  mutate_at(factor_cols, as.factor) %>% 
  mutate_at(logical_cols, funs(if_else( . == "Yes", TRUE, FALSE)) ) %>% 
  mutate_at(numeric_cols, as.numeric ) %>%
  mutate_at(all_that_apply_cols, funs(if_else( is.na(.), FALSE, TRUE)) ) %>% 
  mutate_at(unsure_cols, funs(if_else( . == "Yes", 
                                       TRUE, 
                                       if_else( . == "No", FALSE, NA))))->
  DSSurvey


##############################
# clean variables that need special  handling
#

# DSbirthyear has some non-numeric characters  - so remove them
# the format is not alway %Y, but sometimes %m/%d/%Y - so pull
#   off right-most 4 digits
# then convert to numeric
DSSurvey %>%
  mutate(DSbirthyear = gsub("[^0-9/]", "", DSbirthyear)) %>%
  mutate(DSbirthyear = str_sub(DSbirthyear,-4,-1)) %>%
  mutate(DSbirthyear = as.numeric(DSbirthyear)) ->
  DSSurvey

# create an age column based on DSbirthyear
DSSurvey %>% 
  mutate(DSage = 2018 - DSbirthyear) ->
  DSSurvey



# factor variables where levels need to be ordered
DSSurvey %>%
  mutate(DSeducation = 
           factor(DSeducation,
                  levels = c("Completed middle school", 
                             "Some high school", 
                             "Graduated high school with certificate of completion", 
                             "Graduated high school with a high school diploma", 
                             "Some job training", 
                             "Completed a job training program", 
                             "Some college", 
                             "Completed a college program"))) %>%
  mutate(ed_respond = 
           factor(ed_respond,
                  levels = c("Completed high school", "Completed some college", 
                             "Associate's degree", "Bachelor's degree", 
                             "Completed some post-graduate", "Master's degree", 
                             "Other advanced degree beyond a Master's degree",
                             "Ph.D., law, or medical degree"))) %>%
  mutate(DSvisit = 
           factor(DSvisit, 
                  levels = c("No", "Yes; once", 
                             "Yes; yearly or more"))) %>%
  mutate(clinicdistance = 
           factor(clinicdistance,
                  levels = c("0-20 miles", "20-40 miles", 
                             "40-60 miles", "60-80 miles", 
                             "80-100 miles")))  %>% 
  mutate(income = 
           factor(income,
                  levels = c("Less than $10,000", "$10,000-25,000", 
                             "$25,000-35,000", "$35,000-50,000", 
                             "$50,000-75,000", "$75,000-100,000", 
                             "$100,000-150,000", "$150,000 or more" ))) %>% 
  mutate(visitstotal = 
           factor(visitstotal,
                  levels = c("0-2", "3-5", 
                             "6-8", "9-11", 
                             "12 and over"))) %>% 
  mutate(visitsplanned = 
           factor(visitsplanned, 
                  levels = c("0-2", "3-5", 
                             "6-8", "9-11", 
                             "12 and over"))) %>% 
  mutate(visitsunplanned = 
           factor(visitsunplanned, 
                  levels = c("0-2", "3-5", 
                             "6-8", "9-11", 
                             "12 and over"))) %>% 
  mutate(visitsemergency = 
           factor(visitsemergency, 
                  levels = c("0-2", "3-5", 
                             "6-8", "9-11", 
                             "12 and over"))) %>% 
  mutate(traveltime = 
           factor(traveltime, 
                  levels = c("0-1 hours", "1-2 hours", 
                             "2-3 hours", "3-4 hours", 
                             "Over 4 hours"))) %>%
  mutate(mental_will_now = 
           factor(mental_will_now, 
                  levels = c("Definitely not", "Not sure", 
                             "Probably", "Definitely"))) %>%
  mutate(mental_will_future = 
           factor(mental_will_future,
                  levels = c("Definitely not", "Probably not", 
                             "Not sure", "Probably", 
                             "Definitely"))) ->
  DSSurvey

# clean up the state column
# first, create a tibble with state names, abbrevs,
# and other locations (DC, ON, India) and nonstandard names

st_w_errors <- tibble(state = state.name,
                      location_abb = state.abb) %>% 
  add_row(state = "District of Columbia", location_abb = "DC") %>% 
  add_row(state = "India", location_abb = "India") %>% 
  add_row(state = "Toronto, On", location_abb = "ON") %>% 
  add_row(state = "Mass", location_abb = "MA") %>% 
  add_row(state = "Mass.", location_abb = "MA") %>% 
  add_row(state = "Nys", location_abb = "NY") %>% 
  add_row(state = "Mi, Just Moved Here From Co", location_abb = "MI")

st_wo_errors <- tibble(state = state.name,
                       location_abb = state.abb)




DSSurvey %>% 
  mutate(state_reported = str_to_title(state_reported)) %>% 
  left_join(st_w_errors, by  = c("state_reported" = "state")) %>% 
  mutate(location_abb = if_else(is.na(location_abb), 
                                str_to_upper(state_reported),
                                location_abb))  %>% 
  left_join(st_wo_errors, by = c("location_abb")) -> DSSurvey



# cleans insurance, should be general 



DSSurvey %>% 
  mutate(insurance = as.character(insurance)) %>% 
  mutate(insurance = if_else(!is.na(insurance2) & (str_detect(insurance2, "Medicare") | str_detect(insurance2, "Medicaid")) &
                               is.na(insurance),
                             "Public",
                             insurance
  )
  ) %>% 
  mutate(insurance = if_else(!is.na(insurance2) &
                               (str_detect(insurance2, "Medicare") | str_detect(insurance2, "Medicaid")) &
                               str_detect(insurance, "Private"),
                             "Both",
                             insurance)
  ) %>% 
  mutate(insurance = if_else(!is.na(insurance2) &
                               str_detect(insurance2, "but my DS child is only co"),
                             "Public",
                             insurance)
  ) %>% 
  mutate(insurance = as.factor(insurance)) %>% 
  select(-insurance2) -> DSSurvey



# cleans firstnotified - specific to current data (185 responses)



DSSurvey %>% 
  mutate(firstnotified = as.character(firstnotified)) %>% 
  mutate(firstnotified = if_else(is.na(firstnotified) & 
                                   (str_detect(firstnotified2, "ultrasound") | 
                                      str_detect(firstnotified2, "Sonogram") | 
                                      str_detect(firstnotified2, "testing in utero of fluid")),
                                 "Ultrasound",
                                 firstnotified
  )
  ) %>% 
  mutate(firstnotified = if_else(is.na(firstnotified) &
                                   (str_detect(firstnotified2, "just a screening blood test") | 
                                      str_detect(firstnotified2, "Blood work, I believe")),
                                 "Non-invasive prenatal testing such as Materniti21",
                                 firstnotified)
  ) %>% 
  mutate(firstnotified = if_else(is.na(firstnotified) &
                                   (str_detect(firstnotified2, "Birth Diagnosis") | 
                                      str_detect(firstnotified2, "several hours after birth") | 
                                      str_detect(firstnotified2, "a few hours after")),
                                 "Post-natal; immediately after birth",
                                 firstnotified)
  ) %>% 
  mutate(firstnotified = if_else(is.na(firstnotified) &
                                   (str_detect(firstnotified2, "3 months after")),
                                 "Post-natal; a day or more after birth",
                                 firstnotified)
  ) %>% 
  mutate(firstnotified = as.factor(firstnotified)) %>% 
  select(-firstnotified2) -> DSSurvey
