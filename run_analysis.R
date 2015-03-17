## Check whether the required raw data set
## has been unzipped in the working directory
if(!file.exists("UCI HAR Dataset")) {
    stop("can not find the raw data folder")
}

## Read the test data and merge the columns generating the testDT data frame 
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/x_test.txt")
testDT <- cbind(subject_test, y_test, x_test)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/x_train.txt")
trainDT <- cbind(subject_train, y_train, x_train)
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = F)
names(features) <- c("ID", "fea")
names(testDT) <- c("subject", "num", features$fea)
names(trainDT) <- c("subject", "num", features$fea)
mergeDT1 <- rbind(trainDT, testDT)
n <- grep("(mean|std)\\(\\)", colnames(mergeDT1))
mergeDT2 <- subset(mergeDT1, select = c(1, 2, n))
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = F)
names(activity_labels) <- c("num", "activity")
mergeDT3 <- merge(mergeDT2, activity_labels, by = "num", sort = F)
mergeDT3$activity <- factor(mergeDT3$activity, order = T, levels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
mergeDT3 <- mergeDT3[order(mergeDT3$subject, mergeDT3$num), ]
mergeDT <- subset(mergeDT3, select = c(subject, activity, 3:68))

if(!is.element("reshape2", installed.packages()[,1])) {
    print("Installing packages")
    install.packages("reshape2")
}
library(reshape2)

m <- colnames(mergeDT)
meltDT <- melt(mergeDT, id = c("subject", "activity"), measure.vars = m[3:68])
meanDT <- dcast(meltDT, subject + activity ~ variable, mean)
data <- write.table(meanDT, "finalData.txt", row.names = F, col.names = T)
data <- read.table("finalData.txt", header = T)
 