# This script is part of the final project for the 'Getting and Cleaning Data' course. 
# The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
# The goal is to prepare tidy data that can be used for later analysis. 



xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")

xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

xData <- rbind(xTrain,xTest)
yData <- rbind(yTrain,yTest)
subjectData <- rbind(subjectTrain,subjectTest)



features <- read.table("features.txt")

selected_features <- grep("-(mean|std)\\(\\)", features[, 2])

xData <- xData[,selected_features]

names(xData) <- features[selected_features,2]




activities <- read.table("activity_labels.txt")
yData[,1]<-activities[yData[,1],2]
names(yData)<- c("activity")

names(subjectData)<-c("subject")

cleanData <- cbind(xData,yData,subjectData)

newNames <- colnames(cleanData)

newNames <- gsub("^f","frequency",newNames)
newNames <- gsub("^t","time",newNames) 
newNames <- gsub("Acc","Accelerometer",newNames )
newNames <- gsub("Gyro","Gyroscope",newNames )
newNames <- gsub("Mag","Magnitude",newNames )
newNames <- gsub("Freq","Frequency",newNames )
newNames <- gsub("std","StandardDeviation",newNames) 

colnames(cleanData) <- newNames


averageData<-cleanData %>%
	group_by(subject,activity) %>%
	summarize(across(.cols=everything(),.fns=list(mean=mean)))

write.table(averageData, "cleaned_and_averaged_data.txt")
