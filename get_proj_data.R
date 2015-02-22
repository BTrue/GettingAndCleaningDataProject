## Written by Brian True for Coursera class Getting and Cleaning Data
## Date: 02.21.15

## Function to grab the data files for project in Coursera class --
## Getting and Cleaning Data

## This is a simple helper function that can be run to get the data used 
## for the project. It takes no arguments and simply retrieves the data 
## and puts it in appropriate file folders within the working directory.
## Thus, enabling the grader to easily replicate the data retrieval process 
## implemented by the author of the script run_analysis.R for this project.
get_proj_data <- function(){

## Store address of data file for Project in 'url'
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

## Store file path to zip file
file <- "./data/smartphone_data.zip"

## Check if data directory exists, if not creates it
if(!file.exists("./data")){
     dir.create("./data")
}

## Download the .zip file with smartphone data
download.file(url, destfile = file, method = "curl")

## Unzip File to a new directory in the **data** directory of the working directory
unzip(file, exdir = "./data")

## Creates a list of all files found in the **smartphone_data.zip** file
## called **zip_file_list**
unzip(file, list = T)
}