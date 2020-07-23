# Getting and Cleaning Data Course Project

Initial data for research
The script is invented to analyze the data from UCI HAR Dataset. It's supposed that archive is extracted to the working directory.

The following files from the initial dataset is used:

features.txt - includes the descriptions for features measured
train/X_train.txt - includes the measurements of the features in train set (one row - 1 measurement of 561 features)
test/X_test.txt - includes the measurements of the features in test set
train/subject_train.txt - subject for each measurement from the train set
test/subject_test.txt - subject for each measurement from the test set
train/y_train.txt - activity (from 1 to 6) for each measurement from the train set
test/y_test.txt - activity (from 1 to 6) for each measurement from the test set

The Code/Script

1. The data is downloaded and extracted to the preferred directory location.
2. Loaded the individiual file (such as X_test,X_train,...) as data table using data.table function.
3. Merging each data table into a single data table combining both test and train accordingly and replacing them under a new name.
  a. X_train and X_test are combined together under features
  b. y_train and y_test are combined together under activity
  c. subject_train and subject_test are combined together under subject
  d. extract measurements that involves only mean and standard deviation values script uses grep, that finds column names that includes "mean()" or "std()" (also columns activity and subject are added to filtered data frame, since they are important dimensions). After that all new data frame with only necessary columns is created. (STEP 2: Extract only the measurements on the mean and standard deviation for each measurement of assignment)

4. Renaming the descriptive values for activity labels a new variable "activitylabel" is added to dataset, that is a factor variable with levels mentioned in file activity_labels.txt (STEP 3: Use descriptive activity names to name the activities in the data set of assignment). The values are then rename for a better descriptive values and understanding.

5. Creates a melted data frame using activity label and subject as ids, after that mean values for all variables are calculated grouped by activity and subject using aggregate() function and tidy data frame is created.
