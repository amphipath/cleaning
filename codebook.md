# codebook

::::::::::::::::::::::::::::::::
codebook for `datatable`
::::::::::::::::::::::::::::::::

subjectID
activity

identifiers for subject and activity for the subsequent data.

tBodyAccX.mean
tBodyAccY.mean
tBodyAccZ.mean
tBodyAccX.std
tBodyAccY.std
tBodyAccZ.std
tGravityAccX.mean
tGravityAccY.mean
tGravityAccZ.mean
tGravityAccX.std
tGravityAccY.std
tGravityAccZ.std
tBodyGyroX.mean
tBodyGyroY.mean
tBodyGyroZ.mean
tBodyGyroX.std
tBodyGyroY.std
tBodyGyroZ.std

raw signals of body/gravity/gyroscopic acceleration in the x-y-z directions, processed into mean and standard deviation.

tBodyAccJerkX.mean
tBodyAccJerkY.mean
tBodyAccJerkZ.mean
tBodyAccJerkX.std
tBodyAccJerkY.std
tBodyAccJerkZ.std
tBodyGyroJerkX.mean
tBodyGyroJerkY.mean
tBodyGyroJerkZ.mean
tBodyGyroJerkX.std
tBodyGyroJerkY.std
tBodyGyroJerkZ.std

the raw gyroscopic and body acceleration signals were differentiated to get the jerk or the 3rd derivative of the movement

tBodyAccMag.mean
tBodyAccMag.std
tGravityAccMag.mean
tGravityAccMag.std
tBodyAccJerkMag.mean
tBodyAccJerkMag.std
tBodyGyroMag.mean
tBodyGyroMag.std
tBodyGyroJerkMag.mean
tBodyGyroJerkMag.std

magnitudes of the signals, processed into means and standard deviations

fBodyAccX.mean
fBodyAccY.mean
fBodyAccZ.mean
fBodyAccX.std
fBodyAccY.std
fBodyAccZ.std
fBodyAccJerkX.mean
fBodyAccJerkY.mean
fBodyAccJerkZ.mean
fBodyAccJerkX.std
fBodyAccJerkY.std
fBodyAccJerkZ.std
fBodyGyroX.mean
fBodyGyroY.mean
fBodyGyroZ.mean
fBodyGyroX.std
fBodyGyroY.std
fBodyGyroZ.std
fBodyAccMag.mean
fBodyAccMag.std
fBodyBodyAccJerkMag.mean
fBodyBodyAccJerkMag.std
fBodyBodyGyroMag.mean
fBodyBodyGyroMag.std
fBodyBodyGyroJerkMag.mean
fBodyBodyGyroJerkMag.std

these features start with "f" to signal that they are in the frequency domain of the collected data, obtained from fourier transforms

copied from the feature info of the original dataset:
```
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccXYZ
tGravityAccXYZ
tBodyAccJerkXYZ
tBodyGyroXYZ
tBodyGyroJerkXYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAccXYZ
fBodyAccJerkXYZ
fBodyGyroXYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean: Mean value
std: Standard deviation
```


::::::::::::::::::::::::::::::::
codebook for the summarised data
::::::::::::::::::::::::::::::::

subjectID
activity

Identifiers for the data; which subject performed them and during which activity was the data collected 

avg.tBodyAccX.mean
avg.tBodyAccY.mean
avg.tBodyAccZ.mean
avg.tBodyAccX.std
avg.tBodyAccY.std
avg.tBodyAccZ.std
avg.tGravityAccX.mean
avg.tGravityAccY.mean
avg.tGravityAccZ.mean
avg.tGravityAccX.std
avg.tGravityAccY.std
avg.tGravityAccZ.std
avg.tBodyAccJerkX.mean
avg.tBodyAccJerkY.mean
avg.tBodyAccJerkZ.mean
avg.tBodyAccJerkX.std
avg.tBodyAccJerkY.std
avg.tBodyAccJerkZ.std
avg.tBodyGyroX.mean
avg.tBodyGyroY.mean
avg.tBodyGyroZ.mean
avg.tBodyGyroX.std
avg.tBodyGyroY.std
avg.tBodyGyroZ.std
avg.tBodyGyroJerkX.mean
avg.tBodyGyroJerkY.mean
avg.tBodyGyroJerkZ.mean
avg.tBodyGyroJerkX.std
avg.tBodyGyroJerkY.std
avg.tBodyGyroJerkZ.std
avg.tBodyAccMag.mean
avg.tBodyAccMag.std
avg.tGravityAccMag.mean
avg.tGravityAccMag.std
avg.tBodyAccJerkMag.mean
avg.tBodyAccJerkMag.std
avg.tBodyGyroMag.mean
avg.tBodyGyroMag.std
avg.tBodyGyroJerkMag.mean
avg.tBodyGyroJerkMag.std
avg.fBodyAccX.mean
avg.fBodyAccY.mean
avg.fBodyAccZ.mean
avg.fBodyAccX.std
avg.fBodyAccY.std
avg.fBodyAccZ.std
avg.fBodyAccJerkX.mean
avg.fBodyAccJerkY.mean
avg.fBodyAccJerkZ.mean
avg.fBodyAccJerkX.std
avg.fBodyAccJerkY.std
avg.fBodyAccJerkZ.std
avg.fBodyGyroX.mean
avg.fBodyGyroY.mean
avg.fBodyGyroZ.mean
avg.fBodyGyroX.std
avg.fBodyGyroY.std
avg.fBodyGyroZ.std
avg.fBodyAccMag.mean
avg.fBodyAccMag.std
avg.fBodyBodyAccJerkMag.mean
avg.fBodyBodyAccJerkMag.std
avg.fBodyBodyGyroMag.mean
avg.fBodyBodyGyroMag.std
avg.fBodyBodyGyroJerkMag.mean
avg.fBodyBodyGyroJerkMag.std

these are all from the data above, summarised into averages per activity per subject.