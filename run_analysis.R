
##The train and test data sets are merged into one data set: tbtotal
X_test <- read.table("UCI HAR Dataset/test/X_test.txt",header = FALSE)
y_test <- read.table("UCI HAR Dataset/test/y_test.txt",header = FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt",header = FALSE)
tbtest <- cbind(subject_test,y_test,X_test)

X_train <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",header = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt",header = FALSE)
tbtrain <- cbind(subject_train,y_train,X_train)

tbtotal <- rbind(tbtest, tbtrain)

##Titles are applied to the data set
titles <- read.table("C:/RFoldr/Part3/UCI HAR Dataset/Features.txt")
titles <- titles[,2]
names(tbtotal) <- c("subject","activity",titles)


##A data set with only mean and standard deviation for each measurement
##is created: db

x <- grep("mean\\()|std\\()", colnames(tbtotal))
db <- tbtotal[,c(1,2,x)]

##Activities in the data set (column 2) are given descriptive names
db[db$activity==1,2] <-"walking" 
db[db$activity==2,2] <-"walking_upstairs" 
db[db$activity==3,2] <-"walking_downstairs" 
db[db$activity==4,2] <-"sitting" 
db[db$activity==5,2] <-"standing" 
db[db$activity==6,2] <-"laying" 

##data set is labeled with descriptive variable names
nwtitles <- sub("^t","timedomain",colnames(db))
nwtitles <- sub("^f","frequencydomain",nwtitles)
nwtitles <- sub("\\()","",nwtitles)
nwtitles <- sub("Acc","acceleration",nwtitles)
nwtitles <- sub("Gyro","angularvelocity",nwtitles)
nwtitles <- sub("Mag","magnitude",nwtitles)
nwtitles <- sub("std","stddev",nwtitles)
nwtitles <- sub("X","axisx",nwtitles)
nwtitles <- sub("Y","axisy",nwtitles)
nwtitles <- sub("Z","axisz",nwtitles)
nwtitles <- gsub("-","",nwtitles)
nwtitles <- tolower(nwtitles)
names(db) <- nwtitles

##An independent tidy data set with the average of each variable for each
##activity and each subject is created
db$actsub <- paste(db$activity,db$subject,sep='-')
aggdata <- aggregate(db,list(db$actsub),mean, na.rm=TRUE)
colnames(aggdata)[1] <- "activitysubjectcombination"
drops <- c("activity", "subject", "actsub")
aggdata <- aggdata[,!(names(aggdata) %in% drops)]
write.table(aggdata,"dataset.txt",row.names=FALSE)
