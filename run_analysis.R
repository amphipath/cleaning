readdata <- function(file) {
  assign(sub(".txt","",file),read.table(file))
}

filelist <- list.files()
booboo <- filelist == "README.md" | filelist == "README.txt" | filelist == "run_analysis.R" | filelist == "features_info.txt"
filelist <- filelist[!booboo]

for(i in 1:length(filelist)) {assign(sub(".txt","",filelist[[i]]),read.table(filelist[[i]]))}

meanstd <- grepl("mean\\(\\)",features$V2) | grepl("std\\(\\)",features$V2)
indices <- features$V1[meanstd]

Xdata <- rbind(X_test,X_train)
ydata <- rbind(y_test,y_train)
subjects <- rbind(subject_test,subject_train)
Xdata <- Xdata[,indices]
colnames(Xdata) <- features$V2[indices]
activity_labels$V2 <- tolower(activity_labels$V2)
activity_labels$V2 <- lapply(activity_labels$V2,gsub,pattern = "_",replacement = " ")

substitution <- function(k){
  return(activity_labels$V2[[k]])
}
activities <- as.character(lapply(ydata[[1]],substitution))
datatable <- data.frame(subject = subjects,activity = activities,Xdata)


tidynames <- function(string){
  temp <- strsplit(string,"\\.+")[[1]]
  if(match(temp[length(temp)],c("X","Y","Z"),nomatch=0) > 0 ) {
    return(paste0(temp[1],temp[3],".",temp[2]))
  }
  return(paste0(temp[1],".",temp[2]))
}

testnames <- colnames(datatable)
colnames(datatable) <- as.character(lapply(testnames,tidynames))
colnames(datatable)[1:2] <- c("subjectID","activity")
datatable <- datatable[order(datatable[,2]),]
datatable <- datatable[order(datatable[,1]),]

uniques <- unique(datatable[,1:2])
for(i in 3:length(colnames(datatable))) {
  temp <- numeric(nrow(uniques))
  for(j in 1:nrow(uniques)) {
    temp[j] <- mean(datatable[uniques[[j,1]] == datatable[,1] & uniques[[j,2]] == datatable[,2],i])
  }
  uniques <- cbind(uniques,temp)
}
colnames(uniques) <- colnames(datatable)
colnames(uniques)[3:length(colnames(uniques))] <- paste0("avg.",colnames(uniques)[3:length(colnames(uniques))])
