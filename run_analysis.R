tidy_ds <- function(){
##Please include UCI_HAR_dataset in your working directory
## Read all the data files
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
train_activity <- read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
test_activity <- read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE)
features <- read.table("./UCI HAR Dataset/features.txt",header=FALSE)


## assign variable names to train_data and test data
colnames(train_data) <- features[,2]
colnames(test_data) <- features[,2]

## assign variable names to train_subject and test_subject
colnames(test_subject) <- "subject_id"
colnames(train_subject) <- "subject_id"

##assign variable names to train_activity and test_activity
colnames(test_activity) <- "activity"
colnames(train_activity) <- "activity"

##colbind test_activity,test_subject to test_data
test_final <- cbind(test_activity,test_data)
test_final <- cbind(test_subject,test_final)

##colbind train_activity,train_subject to train_data
train_final <- cbind(train_subject,train_activity,train_data)

##merge both test_final and train_final
merged_data <- rbind(test_final,train_final)

##Replace activity names
merged_data$activity <- activity_labels[match(merged_data$activity,activity_labels$V1),2]

##Extract only the measurements on mean and SD
meanandSD <- grep("mean|std",colnames(merged_data))

## Create another df with the extracted mean and std columns
seconddf <- data.frame(merged_data$subject_id,merged_data$activity)
colnames(seconddf) <- c("subject_id","activity")
for(i in 1:length(meanandSD)){seconddf <- cbind(seconddf,merged_data[meanandSD[i]])}

##Finding the average of all variables grouped by activity and subject_id
newindds <- aggregate(seconddf[,3:length(seconddf)],list(activity=seconddf$activity,subject=seconddf$subject_id),mean)

##write output file
write.table(newindds,"UCI_HAR_tidy dataset.txt",row.name=FALSE)

}
