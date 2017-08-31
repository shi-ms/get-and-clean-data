### Read all required files
library(dplyr)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              destfile = "dataset.zip")
unzip("dataset.zip")
setwd("UCI HAR Dataset")
features <- read.table("features.txt")
activity_label <- read.table("activity_labels.txt")

setwd("train")
x_train <- read.table("x_train.txt")
y_train <- read.table("y_train.txt")
subject_train <- read.table("subject_train.txt")


setwd("../")
setwd("test")
x_test <- read.table("x_test.txt")
y_test <- read.table("y_test.txt")
subject_test <- read.table("subject_test.txt")
################################################

### Merge train and test dataset and name the virables
dataset <- rbind(x_train, x_test)
activity <- rbind(y_train, y_test)
subject <- rbind(subject_train, subject_test)
names(dataset) <- features[[2]]
names(activity) <- "activity"
names(subject) <- "subject"
dataset_merged <- cbind(dataset, activity, subject)
#####################################################

### Extract the mean and std columns
mean_std <- grep("mean\\()|std\\()", features[[2]])
dataset_extracted <- dataset[, mean_std]
dataset_extracted_merged <- cbind(dataset_extracted, activity, subject)
########################################################################

### Replace the activity number by descriptive names
dataset_activity_renamed <- mutate(dataset_extracted_merged, activity = 
                                           activity_label[dataset_extracted_merged$activity, 2])
#################################################################################################

### Labels the data set with descriptive variable names
rawname <- names(dataset_activity_renamed)
newname <- sub("Freq", "", rawname)
newname <- sub("\\()", "", newname)
newname <- sub("^t", "timedomain_", newname)
newname <- sub("^f", "frequencydomain_", newname)
newname <- sub("Body", "body_", newname)
newname <- sub("Gravity", "gravity_", newname)
newname <- sub("Acc", "accelerometer_", newname)
newname <- sub("Gyro", "gyroscope_", newname)
newname <- sub("Jerk", "jerk_", newname)
newname <- sub("Mag", "magnitude", newname)
newname <- sub("_-", "_", newname)
names(dataset_activity_renamed) <- newname
#########################################################

### Calculate average of each variable for each activity and each subject
group <- group_by(dataset_activity_renamed, activity, subject) 
dataset_average <- summarise_all(group, funs(mean))
#########################################################################
