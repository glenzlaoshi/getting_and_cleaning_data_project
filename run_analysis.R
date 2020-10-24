# This script is part of the final project for the 'Getting and Cleaning Data' course. 
# The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
# The goal is to prepare tidy data that can be used for later analysis. 

# add library import
Extracts only the measurements on the mean and standard deviation for each measurement.
    Uses descriptive activity names to name the activities in the data set
    Appropriately labels the data set with descriptive variable names.
    From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


# Step 1: Merge the training and the test sets to create one data set.

# Load the x, y, and subject data from the test and training datasets
xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")

xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

# Merge the training and test datasets to create one for x, y, and subject data
xData <- rbind(xTrain,xTest)
yData <- rbind(yTrain,yTest)
subjectData <- rbind(subjectTrain,subjectTest)



features <- read.table("features.txt")

# Step 2: Extract only the measurements on the mean and standard deviation for each measurement.
# Search for 'mean' and 'std' and save these features as the ones to use
selected_features <- grep("-(mean|std)\\(\\)", features[, 2])

# 
xData <- xData[,selected_features]

names(xData) <- features[selected_features,2]



# Step 3: Use descriptive activity names to name the activities in the data set
# pull activity names from the 'activity_labels.txt' file
activities <- read.table("activity_labels.txt")
# 
yData[,1]<-activities[yData[,1],2]
names(yData)<- c("activity")

names(subjectData)<-c("subject")

cleanData <- cbind(xData,yData,subjectData)

# Step 4: Appropriately labels the data set with descriptive variable names.
# make temp table to store new 
newNames <- colnames(cleanData)

newNames <- gsub("^f","frequency",newNames)
newNames <- gsub("^t","time",newNames) 
newNames <- gsub("Acc","Accelerometer",newNames )
newNames <- gsub("Gyro","Gyroscope",newNames )
newNames <- gsub("Mag","Magnitude",newNames )
newNames <- gsub("Freq","Frequency",newNames )
newNames <- gsub("std","StandardDeviation",newNames) 

colnames(cleanData) <- newNames

# Step 5: Create an independent tidy data set with the average of each variable for each activity and each subject.
averageData<-cleanData %>%
	group_by(subject,activity) %>%
	summarize(across(.cols=everything(),.fns=list(mean=mean)))
# Write the dataset to file
write.table(averageData, "cleaned_and_averaged_data.txt")
