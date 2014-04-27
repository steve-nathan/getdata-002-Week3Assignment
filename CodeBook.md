## CodeBook for runs_analysis.R

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

Columns in tidydata.txt :-

 * 1 Activity
 * 2 Subject
 * 3 tBodyAcc-mean()-X
 * 4 tBodyAcc-mean()-Y
 * 5 tBodyAcc-mean()-Z
 * 6 tBodyAcc-std()-X
 * 7 tBodyAcc-std()-Y
 * 8 tBodyAcc-std()-Z
 * 9 tGravityAcc-mean()-X
 * 10 tGravityAcc-mean()-Y
 * 11 tGravityAcc-mean()-Z
 * 12 tGravityAcc-std()-X
 * 13 tGravityAcc-std()-Y
 * 14 tGravityAcc-std()-Z
 * 15 tBodyAccJerk-mean()-X
 * 16 tBodyAccJerk-mean()-Y
 * 17 tBodyAccJerk-mean()-Z
 * 18 tBodyAccJerk-std()-X
 * 19 tBodyAccJerk-std()-Y
 * 20 tBodyAccJerk-std()-Z
 * 21 tBodyGyro-mean()-X
 * 22 tBodyGyro-mean()-Y
 * 23 tBodyGyro-mean()-Z
 * 24 tBodyGyro-std()-X
 * 25 tBodyGyro-std()-Y
 * 26 tBodyGyro-std()-Z
 * 27 tBodyGyroJerk-mean()-X
 * 28 tBodyGyroJerk-mean()-Y
 * 29 tBodyGyroJerk-mean()-Z
 * 30 tBodyGyroJerk-std()-X
 * 31 tBodyGyroJerk-std()-Y
 * 32 tBodyGyroJerk-std()-Z
 * 33 tBodyAccMag-mean()
 * 34 tBodyAccMag-std()
 * 35 tGravityAccMag-mean()
 * 36 tGravityAccMag-std()
 * 37 tBodyAccJerkMag-mean()
 * 38 tBodyAccJerkMag-std()
 * 39 tBodyGyroMag-mean()
 * 40 tBodyGyroMag-std()
 * 41 tBodyGyroJerkMag-mean()
 * 42 tBodyGyroJerkMag-std()
 * 43 fBodyAcc-mean()-X
 * 44 fBodyAcc-mean()-Y
 * 45 fBodyAcc-mean()-Z
 * 46 fBodyAcc-std()-X
 * 47 fBodyAcc-std()-Y
 * 48 fBodyAcc-std()-Z
 * 49 fBodyAccJerk-mean()-X
 * 50 fBodyAccJerk-mean()-Y
 * 51 fBodyAccJerk-mean()-Z
 * 52 fBodyAccJerk-std()-X
 * 53 fBodyAccJerk-std()-Y
 * 54 fBodyAccJerk-std()-Z
 * 55 fBodyGyro-mean()-X
 * 56 fBodyGyro-mean()-Y
 * 57 fBodyGyro-mean()-Z
 * 58 fBodyGyro-std()-X
 * 59 fBodyGyro-std()-Y
 * 60 fBodyGyro-std()-Z
 * 61 fBodyAccMag-mean()
 * 62 fBodyAccMag-std()
 * 63 fBodyBodyAccJerkMag-mean()
 * 64 fBodyBodyAccJerkMag-std()
 * 65 fBodyBodyGyroMag-mean()
 * 66 fBodyBodyGyroMag-std()
 * 67 fBodyBodyGyroJerkMag-mean()
 * 68 fBodyBodyGyroJerkMag-std()


Columns in tidydata_mean.txt :- 

The values are mean of the column grouped by Acivity, Subject

 * 1 Activity
 * 2 Subject
 * 3 tBodyAcc-mean()-X
 * 4 tBodyAcc-mean()-Y
 * 5 tBodyAcc-mean()-Z
 * 6 tBodyAcc-std()-X
 * 7 tBodyAcc-std()-Y
 * 8 tBodyAcc-std()-Z
 * 9 tGravityAcc-mean()-X
 * 10 tGravityAcc-mean()-Y
 * 11 tGravityAcc-mean()-Z
 * 12 tGravityAcc-std()-X
 * 13 tGravityAcc-std()-Y
 * 14 tGravityAcc-std()-Z
 * 15 tBodyAccJerk-mean()-X
 * 16 tBodyAccJerk-mean()-Y
 * 17 tBodyAccJerk-mean()-Z
 * 18 tBodyAccJerk-std()-X
 * 19 tBodyAccJerk-std()-Y
 * 20 tBodyAccJerk-std()-Z
 * 21 tBodyGyro-mean()-X
 * 22 tBodyGyro-mean()-Y
 * 23 tBodyGyro-mean()-Z
 * 24 tBodyGyro-std()-X
 * 25 tBodyGyro-std()-Y
 * 26 tBodyGyro-std()-Z
 * 27 tBodyGyroJerk-mean()-X
 * 28 tBodyGyroJerk-mean()-Y
 * 29 tBodyGyroJerk-mean()-Z
 * 30 tBodyGyroJerk-std()-X
 * 31 tBodyGyroJerk-std()-Y
 * 32 tBodyGyroJerk-std()-Z
 * 33 tBodyAccMag-mean()
 * 34 tBodyAccMag-std()
 * 35 tGravityAccMag-mean()
 * 36 tGravityAccMag-std()
 * 37 tBodyAccJerkMag-mean()
 * 38 tBodyAccJerkMag-std()
 * 39 tBodyGyroMag-mean()
 * 40 tBodyGyroMag-std()
 * 41 tBodyGyroJerkMag-mean()
 * 42 tBodyGyroJerkMag-std()
 * 43 fBodyAcc-mean()-X
 * 44 fBodyAcc-mean()-Y
 * 45 fBodyAcc-mean()-Z
 * 46 fBodyAcc-std()-X
 * 47 fBodyAcc-std()-Y
 * 48 fBodyAcc-std()-Z
 * 49 fBodyAccJerk-mean()-X
 * 50 fBodyAccJerk-mean()-Y
 * 51 fBodyAccJerk-mean()-Z
 * 52 fBodyAccJerk-std()-X
 * 53 fBodyAccJerk-std()-Y
 * 54 fBodyAccJerk-std()-Z
 * 55 fBodyGyro-mean()-X
 * 56 fBodyGyro-mean()-Y
 * 57 fBodyGyro-mean()-Z
 * 58 fBodyGyro-std()-X
 * 59 fBodyGyro-std()-Y
 * 60 fBodyGyro-std()-Z
 * 61 fBodyAccMag-mean()
 * 62 fBodyAccMag-std()
 * 63 fBodyBodyAccJerkMag-mean()
 * 64 fBodyBodyAccJerkMag-std()
 * 65 fBodyBodyGyroMag-mean()
 * 66 fBodyBodyGyroMag-std()
 * 67 fBodyBodyGyroJerkMag-mean()
 * 68 fBodyBodyGyroJerkMag-std()