










# add something to load packages


# Get the data

labels <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("id","activity"))
labels[,2] <- as.character(labels[,2])

features <- read.table("UCI HAR Dataset/features.txt",col.names=c("id","featureType"))
features[,2] <- as.character(features[,2])

needed_features<-grep("(mean|std)\\(\\)",features[,2])
needed_features_names<-features[needed_features,2]



