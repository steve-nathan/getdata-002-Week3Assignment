# setwd("C:/Users/Vidya/Documents/steve/courses/gcd/project/getdata-002-Week3Assignment")
library(utils)
library(plyr)
library(data.table)
library(reshape2)

unzip("getdata-projectfiles-UCI HAR Dataset.zip")

activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="",stringsAsFactors=FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE, sep="",stringsAsFactors=FALSE)

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, sep="")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, sep="")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE, sep="")
y_test2 <- data.frame(Activity = factor(y_test$V1,labels = activity$V2))
test <- cbind(y_test2,subject_test,x_test)

subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, sep="")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE, sep="")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE, sep="")
y_train2 <- data.frame(Activity = factor(y_train$V1,labels = activity$V2))
train <- cbind(y_train2,subject_train,x_train)

tidydata <- rbind(test,train)
names(tidydata)<-c('Activity','Subject',features[,2])

selectColumns <- features$V2[grep('std\\(\\)|mean\\(\\)',features$V2)]

matches <- c("Activity","Subject",selectColumns)
tidydata1 <- tidydata[matches]

# Assumption : Requirement for tidydata.txt  
#   You should create one R script called run_analysis.R that does the following. 
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive activity names. 

write.table(tidydata1, file="./tidydata.txt", sep="\t", row.names=FALSE)

# Assumption : Requirement for tidydata_mean.txt
#   You should create one R script called run_analysis.R that does the following. 
# 1.Merges the training and the test sets to create one data set.
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive activity names. 
# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

tidyMelt <- melt(tidydata,id=c("Activity","Subject"),measure.vars=c(selectColumns))
tidyMean <- dcast(tidyMelt, Activity+Subject ~ variable,mean)
write.table(tidyMean, file="./tidydata_mean.txt", sep="\t", row.names=FALSE)
