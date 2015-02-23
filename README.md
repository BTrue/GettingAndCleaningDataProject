# GettingAndCleaningDataProject
Repo created for the project in Coursera class -- Getting and Cleaning Data 

## Assignment Incomplete -- But this is what I have so far

#### **DIRECTIONS:** You should create one R script called **run_analysis.R** that does the following:

1. Merges the training and the test sets to create one data set.

2. Extracts only the measurements on the mean and standard deviation for each measurement. 

3. Uses descriptive activity names to name the activities in the data set

4. Appropriately labels the data set with descriptive variable names. 

5. From the data set in step 4, creates a second, independent tidy data set with the             average of each variable for each activity and each subject.

#### **PROCEDURE:**
- Created a function script **run_analysis.R**
- Installed **dplyr** and **tidyr** for use later.
- Included *require(dplyr)* and *require(tidyr)*.
- Imported and read data from **UCI HAR Data** found at (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) using *unz()* and *read.files()* to create usable data frames that can be merged and manipulated to create a one tidy dataset.
- Merged data frames concatinating data, subject, and features frames, creating one large data frame called **all_data**. The script calls to base function *rbind()* to do so. 
- Added the **activity** and **subject** columns to the dataset and renamed it **all_data**.
- Added column names from **features.txt** as the column names using *cbind()*. 
- And, renamed columns in dataset to R compatible variable names with the *make.names()* function.
- Began the process of trimming the dataset down to the columns related to Mean and Standard deviation. In order to do so, it was necessary to rename columns by R standards.  and *select()* from the **dplyr** package.

