library(dplyr)

# fundamental data
activities <- read.delim("activity_labels.txt", header = FALSE, sep = "", col.names = c("activityId", "activityName"))
features <- read.delim("features.txt", header = FALSE, sep = "", col.names = c("featureId", "featureName"), stringsAsFactors = FALSE)

# Load training data
train.subjects <- read.delim("train/subject_train.txt", header = FALSE, sep = "", col.names = c("subjectId"))
train.activities <- read.delim("train/y_train.txt", header = FALSE, sep = "", col.names = c("activityId"))
train.set <- read.delim("train/X_train.txt", header = FALSE, sep = "", col.names = features$featureName)
train.data <- tbl_df(cbind(train.subjects, train.activities, train.set))

# Load test data
test.subjects <- read.delim("test/subject_test.txt", header = FALSE, sep = "", col.names = c("subjectId"))
test.activities <- read.delim("test/y_test.txt", header = FALSE, sep = "", col.names = c("activityId"))
test.set <- read.delim("test/X_test.txt", header = FALSE, sep = "", col.names = features$featureName)
test.data <- tbl_df(cbind(test.subjects, test.activities, test.set))

# Merge training and test, select columns for Mean and Standard deviation; not "angle(something)"
allData <- rbind(train.data, test.data) %>% 
        inner_join(activities) %>% 
        select(subjectId, activityName, contains("mean.."), contains("std..")) %>% 
        select(-starts_with("angle"))

# Clean names
allData <-  allData %>% 
        setNames(gsub("^f", "frequencyDomain_", names(.))) %>% 
        setNames(gsub("^t", "timeDomain_", names(.))) %>% 
        setNames(gsub("mean\\.\\.", "_MEAN_", names(.))) %>% 
        setNames(gsub("std\\.\\.", "_STD_", names(.))) %>% 
        setNames(gsub("\\.", "", names(.)))

# Create a summarized data set (mean values for each variable)
summary <- allData %>% 
        group_by(subjectId, activityName) %>% 
        summarize_each(list(mean))

# Output summary as txt-file, display the data set
write.table(summary, file = "summary.txt", row.name = FALSE)
print(summary)
