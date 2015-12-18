## IMPORTING DATA DIRECTLY INTO R
# Contact: @HunterRatliff1

## Install & load the 'RCurl' package
if(!require(RCurl)) install.packages("RCurl") # If missing package, install from CRAN
require(RCurl)                                # Load package



# Read in the CSV  as a csv 
hosp <- read.csv(file = textConnection(url))

