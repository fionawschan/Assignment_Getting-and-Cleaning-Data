library(reshape2)

filename <- "dataset.zip"

## Download dataset
if(!file.exists(filename)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, filename, method="curl")
}

## Unzip
if(!file.exists("UCI HAR Dataset")){
  unzip(filename)
}

## Load labels and features
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activitylabels[,2] <- as.character(activitylabels[,2])
features <- read.table("UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])

## Subset data with mean and std
featuresMeanStd <- grep(".*mean.*|.*std.*", features[,2])
featuresMeanStd.names <- features[featuresMeanStd,2]
featuresMeanStd.names = gsub('-mean', 'Mean', featuresMeanStd.names)
featuresMeanStd.names = gsub('-std', 'Std', featuresMeanStd.names)
featuresMeanStd.names <- gsub('[-()]', '', featuresMeanStd.names)

## Load datasets
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")[featuresMeanStd]
Y_train <- read.table("UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
X_train <- cbind(Y_train, subject_train, train)

X_test <- read.table("UCI HAR Dataset/test/X_test.txt")[featuresWanted]
Y_test <- read.table("UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
X_test <- cbind(Y_test, subject_test, test)

## Merge datasets and add labels
allData <- rbind(X_train, X_test)
colnames(allData) <- c("subject", "activity", featuresMeanStd.names)

## turn activites and subjects into factors
allData$activity <- factor(allData$activity, levels = activityLabels[,1], labels = activityLabels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id=c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names=FALSE, quote=FALSE)
