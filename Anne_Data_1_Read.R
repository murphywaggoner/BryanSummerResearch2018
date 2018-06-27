## Load in packages needed
require(tidyverse)
require(readxl)


# Read in the raw data not using the row names
# because they contain non-ascii characters
# Assign NA to all relevant strings
read_excel("AnneData.xlsx", 
           col_names = FALSE,
           na = c("N/A", "n/a", "NA", "na", "Na", "N/a", "Not applicable", "",
                  "Not applicable; my family member does not attend a Down syndrome specialty clinic") ) -> 
  DSSurveyraw