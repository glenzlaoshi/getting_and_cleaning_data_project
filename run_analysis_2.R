


xTrain <- read.table("train/X_train.txt")
yTrain <- read.table("train/Y_train.txt")
subjectTrain <- read.table("train/subject_train.txt")

xTest <- read.table("test/X_test.txt")
yTest <- read.table("test/Y_test.txt")
subjectTest <- read.table("test/subject_test.txt")

xData <- rbind(xTrain,xTest)
yData <- rbind(yTrain,yTest)
subjectData <- rbind(subjectTrain,subjectTest)



features <- read.table("features.txt")

selected_features <- grep("-(mean|std)\\(\\)", features[, 2])


