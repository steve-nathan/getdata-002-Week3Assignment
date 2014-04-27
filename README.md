##  Data Analysis on accelerometers from the Samsung Galaxy S smartphone
 
The goal is to prepare tidy data that can be used for analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 Th R script called run_analysis.R does the following.
 
Part 1 :-
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates a tidy dataset and writes the results to the file tidydata.txt.

Part 2 :-
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive activity names. 
* Creates tidy data set with the average of each variable for each activity and each subject and writes the results to the file tidydata_mean.txt.


Files related to this project :-

* README.md - README file
* runs_analysis.R - R script file
* CodeBook.md - Codebook
* Data file - getdata-projectfiles-UCI HAR Dataset.zip


How the script runs_analysis.R works :- 

* The scripts uncompresses the zip file getdata-projectfiles-UCI HAR Dataset.zip from the current working directory

* reads ./UCI HAR Dataset/activity_labels.txt into activity
* reads ./UCI HAR Dataset/features.txt into features

* reads test data from files ./UCI HAR Dataset/test/y_test.txt ./UCI HAR Dataset/test/subject_test.txt ./UCI HAR Dataset/test/X_test.txt 
* factor is used to translate values from y_test.txt
* creates test dataframe and combines the test data

* reads train data from files ./UCI HAR Dataset/train/y_train.txt ./UCI HAR Dataset/train/subject_test.txt ./UCI HAR Dataset/train/X_train.txt 
* factor is used to translate values from y_train.txt
* creates train dataframe and combines the train data

* combines test and train data into a new dataframe called tidydata
* updates column headers for tidydata

* grep is used to identify mean() and std() columns and the results are saved to selectcolumns

* tidydata1 is populated with the subset of the required columns from tidydata
* tidydata1 is saved to file tidydata.txt

* melt and dcast is used to find mean of selected variables in tidydata by "Activity","Subject" and the results stored in tidyMean

* tidyMean is saved to file tidydata_mean.txt









