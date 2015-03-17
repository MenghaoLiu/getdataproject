# Getting and cleaning data project

## Requirements

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called **CodeBook.md**. You should also include a **README.md** in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called **run_analysis.R** that does the following: 
>- Merges the training and the test sets to create one data set. 
- Extracts only the measurements on the mean and standard deviation for each measurement.  
- Uses descriptive activity names to name the activities in the data set. 
- Appropriately labels the data set with descriptive variable names.
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Description for run_analysis.R

You can use the [run_analysis.R](https://github.com/MenghaoLiu/getdataproject/blob/master/run_analysis.R) script to process the data sets and finish this project. **Note:** You must download the raw data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
and unzip the folder named **UCI HAR Dataset** into your working directory before running the script above.

The process of run_analysis.R is as follows:
- Check whether the required raw data set has been unzipped in the working directory
- Read the test data, merge the columns and generate a data frame named **testDT**
- Read the train data, merge the columns to create the **trainDT** data frame
- Loads **features** data set features.txt used for columns, name the variables in trainDT and testDT with all the features, then merge these two data frames and generate **mergeDT1**
- Extract the variables of mergeDT1 with **mean()** or **std()** in their names, take a subset and generate **mergeDT2**
- Load **activity** labels activity_labels.txt and merge the mergeDT2 with it to create **mergeDT3**
- Take a subset of mergeDT3 to create **mergeDT**
- Install the required package **reshape2** and load it
- Melt and cast the data to create a tidy data set with the average of each variable for each activity and each subject
- Write the tidy data set into a .txt or .csv file named **finalData** and try to reload it into R
