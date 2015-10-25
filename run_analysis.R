if(!file.exists("./getdata-projectfiles-UCI HAR Dataset.zip"))
{
    print("downloading and unzipping...")
    
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "./getdata-projectfiles-UCI HAR Dataset.zip")
    
}
if(!dir.exists("./UCI HAR Dataset/"))
{
    unzip("./getdata-projectfiles-UCI HAR Dataset.zip",overwrite = TRUE)
}

#reading features and activity labels

features<- read.table("./UCI HAR Dataset/features.txt",stringsAsFactors = FALSE)
act_labels<- read.table("./UCI HAR Dataset/activity_labels.txt",stringsAsFactors = FALSE)

nfeatures<- features[,2]
nlabels<-act_labels[,2]



#reading all test and train data
sub_test<- read.table("./UCI HAR Dataset/test/subject_test.txt")

X_test<- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<- read.table("./UCI HAR Dataset/test/y_test.txt")

sub_train<- read.table("./UCI HAR Dataset/train/subject_train.txt")

X_train<- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<- read.table("./UCI HAR Dataset/train/y_train.txt")

# Step 1: mergingg all data
alldata <- rbind(cbind(y_test,sub_test,X_test),cbind(y_train,sub_train,X_train))

# Step 2: extract only mean and std
varnames<- c("Activity_Name","Subject",nfeatures)
extractcols <- append(c(1,2),grep("-mean\\(|-std\\(", varnames))
alldata<-alldata[,extractcols]

# Step 3: descriptive activity names
alldata[,1] <- factor(alldata[,1],labels = nlabels )

# Step 4: descriptive variable names
colnames(alldata)<-varnames[extractcols]


# Step 5: independent tidy data set with the average of each variable for each activity and each subject.
melted <- melt(alldata,id= c("Activity_Name","Subject"))
dcasted<- dcast(melted,Activity_Name+Subject~variable,mean )
write.table(dcasted,"tidy_dataset.txt",row.names = FALSE)

