## Loading the appropriate library that will be used

library (data.table)
library (dplyr)

## Choosing a default location for all the files to be
## downloaded in local storage

URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
PATH <- "C:/Users/Owner/Desktop/DataScientist/Assignment4/Data.zip"
download.file(URL,PATH)

## Now to unzip the file

unzip(zipfile = PATH)

newpath = file.path("UCI HAR Dataset")
files = list.files(newpath, recursive = TRUE)
files()

## Reading the supporting information

featureNames <- read.table(file.path(newpath, "features.txt"))
activityLabels <- read.table(file.path(newpath, "activity_labels.txt"),header=FALSE)

## Reading the datasets

subject_train <- read.table(file.path(newpath, "train", "subject_train.txt"),header=FALSE)
activity_train <- read.table(file.path(newpath, "train", "y_train.txt"),header=FALSE)
features_train <- read.table(file.path(newpath, "train", "X_train.txt"),header=FALSE)

subject_test <- read.table(file.path(newpath, "test", "subject_test.txt"),header=FALSE)
activity_test <- read.table(file.path(newpath, "test", "y_test.txt"),header=FALSE)
features_test <- read.table(file.path(newpath, "test", "X_test.txt"),header=FALSE)

## Merging the datasets

subject <- rbind (subject_train, subject_test)
activity <- rbind (activity_train, activity_test)
features <- rbind (features_train, features_test)

colnames(features) <- t(featureNames[2])
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"

## storing the new merged data under a single function for ease
## access and usage

completeData <- cbind(features,activity,subject)

## Extracting any data that have either mean or std

columnsWithMeanSTD <- grep(".*Mean.*|.*Std.*", names(completeData), ignore.case=TRUE)

## Adding an additional column and extracting data from the additional column

requiredColumns <- c(columnsWithMeanSTD, 562, 563)
extractedData <- completeData[,requiredColumns]

## Labeling the activity based on the supporting information

extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
  extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}

extractedData$Activity <- as.factor(extractedData$Activity)

## This will show the labels in the extracted data

names(extractedData)

## Replacing acronyms with better descriptive names

names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("^t", "Time", names(extractedData))
names(extractedData)<-gsub("^f", "Frequency", names(extractedData))
names(extractedData)<-gsub("tBody", "TimeBody", names(extractedData))
names(extractedData)<-gsub("-mean()", "Mean", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-std()", "STD", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("-freq()", "Frequency", names(extractedData), ignore.case = TRUE)
names(extractedData)<-gsub("angle", "Angle", names(extractedData))
names(extractedData)<-gsub("gravity", "Gravity", names(extractedData))

## Creating an independent tidy dataset
## Using average value of each variable

extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)

tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "NewTidyData.txt", row.names = FALSE)