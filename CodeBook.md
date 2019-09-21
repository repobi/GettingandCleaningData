# Tidy data
* timeDomain_BodyAcc_XYZ
* timeDomain_GravityAcc_XYZ
* timeDomain_BodyAccJerk_XYZ
* timeDomain_BodyGyro_XYZ
* timeDomain_BodyGyroJerk_XYZ
* timeDomain_BodyAccMag
* timeDomain_GravityAccMag
* timeDomain_BodyAccJerkMag
* timeDomain_BodyGyroMag
* timeDomain_BodyGyroJerkMag
* frequencyDomain_BodyAcc_XYZ
* frequencyDomain_BodyAccJerk_XYZ
* frequencyDomain_BodyGyro_XYZ
* frequencyDomain_BodyAccMag
* frequencyDomain_BodyAccJerkMag
* frequencyDomain_BodyGyroMag
* frequencyDomain_BodyGyroJerkMag
## sub
* MEAN: Mean value
* STD: Standard deviation

## information
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeDomain_Acc_XYZ and timeDomain_Gyro_XYZ.
These time domain signals were captured at a constant rate of 50 Hz.
Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeDomain_BodyAcc_XYZ and timeDomain_GravityAcc_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeDomain_BodyAccJerk-XYZ and timeDomain_BodyGyroJerk-XYZ).
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeDomain_BodyAccMag, timeDomain_GravityAccMag, etc. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyDomain_BodyAcc-XYZ, frequencyDomain_BodyAccJerk_XYZ, frequencyDomain_BodyGyro_XYZ, etc.

These signals were used to estimate variables of the feature vector for each pattern:  
'_XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
