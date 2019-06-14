#Mobile Capture Activity Measure Project
#0.5 download zipfile to directory
if (!file.exists("data")) {
        dir.create("data")
}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#mode="wb" unzip data
download.file(fileURL, destfile="./data/har.zip", mode="wb")

#1 subject_train & test - participant id
subject_train <- read.fwf("./data/UCI HAR Dataset/train/subject_train.txt", widths = c(2), 
                          header=FALSE, sep = "\t")
subject_test <- read.fwf("./data/UCI HAR Dataset/test/subject_test.txt", widths = c(2), 
                          header=FALSE, sep = "\t")
subject_combined <- rbind(subject_train, subject_test)

#1.5 y_train and y_test - activity numbers
library(data.table)
y_train <- read.table("./data/UCI HAR Dataset/train/y_Train.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_Test.txt")
activity_combined <- rbind(y_train, y_test)
colnames(activity_combined) <- c("activityNo")

#1.6 activityLabels
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
colnames(activityLabels) <- c("activityNo","activityName")

#1.7 join to get corresponding activity labels
activity_combined <- inner_join(activity_combined, activityLabels,
                                 by=c("activityNo"="activityNo"))

#2 x_train and x_test - feature measurements
x_train <- read.table("./data/UCI HAR Dataset/train/x_Train.txt")
x_test <- read.table("./data/UCI HAR Dataset/test/x_Test.txt")
measurement_combined <- rbind(x_train, x_test)

#3 featureLabels
featureLabels <- read.table("./data/UCI HAR Dataset/features.txt")
featureLabels_DT <- data.table(featureLabels)
colnames(featureLabels_DT) <- c("featureLabelNo","featureLabelName")

#4 make all feature labels into vector, tidy them
featureColNames <- as.vector(featureLabels_DT$featureLabelName) 
for (i in 1:length(featureColNames))
{
        featureColNames[i] <- gsub("-", "_", featureColNames[i]) 
}
for (i in 1:length(featureColNames))
{
        featureColNames[i] <- gsub("\\()", "", featureColNames[i]) 
}
for (i in 1:length(featureColNames))
{
        featureColNames[i] <- sub("^t", "time_", featureColNames[i])
}
for (i in 1:length(featureColNames))
{
        featureColNames[i] <- sub("^f", "freq_", featureColNames[i])
}
for (i in 1:length(featureColNames))
{
        featureColNames[i] <- gsub(",", "_", featureColNames[i])
}
#featureColNames[502]
#featureColNames[555]

#5 assign tidy feature labels to measurement_combined
colnames(measurement_combined) <- featureColNames

#6 get select feature labels based on untidy names, then tidy them
selectFeatures <-
        featureLabels_DT[featureLabels_DT$featureLabelName %like% "mean()" | 
                                 featureLabels_DT$featureLabelName %like% "std()"]
selectFeatureColNames <- as.vector(selectFeatures$featureLabelName) 
for (i in 1:length(selectFeatureColNames))
{
        selectFeatureColNames[i] <- gsub("-", "_", selectFeatureColNames[i]) 
}
for (i in 1:length(selectFeatureColNames))
{
        selectFeatureColNames[i] <- gsub("\\()", "", selectFeatureColNames[i]) 
}
for (i in 1:length(selectFeatureColNames))
{
        selectFeatureColNames[i] <- sub("^t", "time_", selectFeatureColNames[i])
}
for (i in 1:length(selectFeatureColNames))
{
        selectFeatureColNames[i] <- sub("^f", "freq_", selectFeatureColNames[i])
}
#selectFeatureColNames
#write(selectFeatureColNames, "./data/colnames.txt")

#6.5 cbind activity_combined Names to subject_combined
subject_combined <- cbind(subject_combined, activity_combined[,c("activityName")])
colnames(subject_combined) <- c("participantId", "activityName")

#7 cbind to subject_combined based on1 select tidy labels
# subset using a vector of labels do not work with Data Table, works with Data Frame
subject_combined <- cbind(subject_combined, measurement_combined[,selectFeatureColNames])
colnames(subject_combined)

#8 create new dataset via group by subject and activity, calculate avg of each measurement
measurement_by_subj_act <- group_by(subject_combined, .dots=c("participantId", "activityName"))
measurement_by_subj_act

#9 summarize all to calculate non-group by column means 
AvgSummary <- summarise_all(measurement_by_subj_act, list(mean))

#10 quick unit tests                 
test1 <- data.frame()
test1 <- subject_combined[subject_combined$participantId=="1" 
                          & subject_combined$activityName=="STANDING",1:3]
sum(test1[3])/27
test1 <- subject_combined[subject_combined$participantId=="30" 
                          & subject_combined$activityName=="WALKING",1:3]
sum(test1[3])/65
test1 <- subject_combined[subject_combined$participantId=="30" 
                          & subject_combined$activityName=="WALKING",1:4]
sum(test1[4])/65

write.table(subject_combined, "./subject_combined.txt", row.name=FALSE) 
write.table(subject_combined, "./AvgSummary.txt", row.name=FALSE) 
