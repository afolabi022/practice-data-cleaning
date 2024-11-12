Df<- read.csv("C:/Program Files/RStudio/getdata_data_ss06hid.csv")
Df
# Step 1: Download the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl, destfile = "idaho_housing.csv", method = "curl")

# Step 2: Load the data into R
housing_data <- read.csv("idaho_housing.csv")

# Step 3: Examine the data structure to find the variable representing property value
# (Refer to the codebook for exact column name, it’s typically "VAL" for property value)

# Step 4: Identify properties worth $1,000,000 or more
# According to the codebook, "VAL" has coded values, where a certain code represents $1,000,000 or more

# Filter for properties worth $1,000,000 or more
# According to the codebook, the "VAL" variable represents property value, 
# with a value of 24 indicating properties worth $1,000,000 or more.

million_dollar_properties <- housing_data[housing_data$VAL == 24, ]
num_million_dollar_properties <- nrow(million_dollar_properties)

# Output the result
# Calculate the total number of NAs in the entire dataset
total_NAs <- sum(is.na(housing_data))

# Output the result
total_NAs


