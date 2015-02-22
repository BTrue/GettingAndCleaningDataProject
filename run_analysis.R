#####################################################################
## Written by Brian True for Coursera class Getting and Cleaning Data
## Date: 02.21.15
##
#####################################################################
#
# Function: run_analysis()
# Arguments: N/A
# Purpose: Download/analyze dataset collected via Samsung Galaxy S smartphone.
#          And, return a tidy dataset.
# Note: More detailed information can be found in the README.md file
#       located in the GettingAndCleaningData repo on GitHub at
#       https://github.com/GratefulGeek/GettingAndCleaningDataProject
# 
#####################################################################         

run_analysis <- function(){
     ## Install dplyr() and tidyr() for data manipulation
     install.packages(c("dplyr","tidyr"))
     require(dplyr)
     require(tidyr)     
     
     # Store address of data file for Project in 'url' 
     # Create 'temp' file for 
     url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
     temp <- tempfile()
     
     # Download the .zip file with smartphone data
     download.file(url, destfile = temp, method = "curl")
     
     # Extract and read data files from dataset url to usable data frames
     x_test <- read.table(unz(temp,"UCI HAR Dataset/test/X_test.txt"))
     y_test <- read.table(unz(temp, "UCI HAR Dataset/test/y_test.txt"))
     subj_test <- read.table(unz(temp, "UCI HAR Dataset/test/subject_test.txt"))
     x_train <- read.table(unz(temp, "UCI HAR Dataset/train/X_train.txt"))
     y_train <- read.table(unz(temp, "UCI HAR Dataset/train/y_train.txt"))
     subj_train <- read.table(unz(temp, "UCI HAR Dataset/train/subject_train.txt"))
     activities <- read.table(unz(temp, "UCI HAR Dataset/activity_labels.txt"))[,2]
     features <- read.table(unz(temp, "UCI HAR Dataset/features.txt"))[,2]
     unlink(temp)
     
     ## Merge features, activities, and subjects data from test and train w/rbind()
     featureData <- rbind(x_test,x_train)
     activityData <- rbind(y_test,y_train)
     subjectData <- rbind(subj_test,subj_train)
     
     ## Set variable names for subjectData, activityData and featureData
     names(activityData) <- c("activity")
     names(subjectData) <- c("subject")
     names(featureData) <- make.names(names=features, unique=T, allow_=T)
     
     ## Merge dataframes into one master data frame called all_data
     data <- cbind(subjectData,activityData)
     all_data <- cbind(featureData,data)
     
     ## Extract mean() and std() columns only
     
     
     }