
## Check whether the required raw data set has been unzipped in the working directory

if(!file.exists("UCI HAR Dataset")) {
    stop("can not find the raw data folder")
}

## Read the test data, merge the columns and generate the testDT data frame

subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
testDT <- cbind(subject_test, y_test, x_test)

## Read the train data, merge the columns to create the trainDT data frame
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
trainDT <- cbind(subject_train, y_train, x_train)

## Name the variables in trainDT and testDT with all the features, then merge these
## two data frames and generate mergeDT1

features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = F)
names(features) <- c("ID", "fea")
names(testDT) <- c("subject", "num", features$fea)
names(trainDT) <- c("subject", "num", features$fea)
mergeDT1 <- rbind(trainDT, testDT)

## Extract the variables with mean() or std() in their name and generate mergeDT2

n <- grep("(mean|std)\\(\\)", colnames(mergeDT1))
mergeDT2 <- subset(mergeDT1, select = c(1, 2, n))

## Name the activities and merge the datasets to create mergeDT3

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
names(activity_labels) <- c("num", "activity")
mergeDT3 <- merge(mergeDT2, activity_labels, by = "num", sort = F)

## Transform the attribute of activity variable into factor, order the mergeDT3 by 
## subject and activity, subset mergeDT3 to create mergeDT

mergeDT3$activity <- factor(mergeDT3$activity, order = T, levels = c("WALKING", "WALKING_UPSTAIRS", 
"WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
mergeDT3 <- mergeDT3[order(mergeDT3$subject, mergeDT3$num), ]
mergeDT <- subset(mergeDT3, select = c(subject, activity, 3:68))

## Check install the required package reshape2 and load it

if(!is.element("reshape2", installed.packages()[,1])) {
    print("Installing packages")
    install.packages("reshape2")
}
library(reshape2)

## Melt and cast the data to create a tidy data set with the average of each variable 
## for each activity and each subject

meltDT <- melt(mergeDT, id = c("subject", "activity"), measure.vars = colnames[3:68])
meanDT <- dcast(meltDT, subject + activity ~ variable, mean)

## Write the tidy data set into a txt file named finalData and try to load it into R
data <- write.table(meanDT, "finalData.txt", row.names = F, col.names = T)
data <- read.table("finalData.txt", header = T)

