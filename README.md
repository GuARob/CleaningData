# CleaningData
This depository contains the files required by Getting and Cleaning Data Course Project

The repository includes the following files:
- 'README.md'
- 'run_analysis.R' : R script file that contains the commands to perform the tasks described below
- 'CodeBook.md' : code book describing the variables, the data, and any transformations or work performed to clean up the data

This README file explains how the scripts works. 
The main tasks to perform by the script are:
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names.
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

The script does the following:
- read all necessary files
- combines the X_*, y_*, subject_* files into one data set, for each of the test and train directories
- combines (binds) the two data sets from the test and train files into one
- applies the titles contained in the Features.txt file to the variables in the data set
- creates a data set with only mean and standard deviation for each measurement
- gives descriptive names to the activities in the data set (column 2), based on the coding described in the activity_labels file
- gives descriptive names to variables in the data set, substituting parts of the variable names for complete readable words
- creates an independent tidy data set with the average of each variable for each activity and each subject, by creating a column that combines the activity and subject columns,
  and calculating the means of each variable in the data set grouped by this new activity-subject column
- writes the resulting data set to a file
The 'run_analysis.R' script file contains a section headed by a ##comment## for each of the required tasks.
