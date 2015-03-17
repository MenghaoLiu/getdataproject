# Code book for the tidy data

## Introduction
This is a code book for the tidy data processed from [Human Activity Recognition Using Smartphones Dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), which were collected from the accelerometer and gyroscope of the Samsung Galaxy S II smartphone, targeting the recognition of six
different human activities. The tidy data provides you the average of measurements on the mean and standard deviation for a specific activity and subject. Also, it has 180 rows and 68 columns, and you can access a formatted file named [finalData.csv](https://github.com/MenghaoLiu/getdataproject/blob/master/finalData.csv) for some details in this Github repository.
## Description of variables
- **subject**: An integer number in 1:30, representing the identifier of a subject who carried out the experiment.
- **activity**: One kind of the six ADL (Activities of Daily Living), labeled by *WALKING*, *WALKING_UPSTAIRS*, *WALKING_DOWNSTAIRS*, *SITTING*, *STANDING* and *LAYING*.
- **tBodyAcc-mean()-X**: Time domain signal, average of the body acceleration mean value on X axis.
- **tBodyAcc-mean()-Y**: Time domain signal, average of the body acceleration mean value on Y axis.
- **tBodyAcc-mean()-Z**: Time domain signal, average of the body acceleration mean value on Z axis.
- **tBodyAcc-std()-X**: Time domain signal, average of the body acceleration standard deviation value on X axis.
- **tBodyAcc-std()-Y**: Time domain signal, average of the body acceleration standard deviation value on Y axis.
- **tBodyAcc-std()-Z**: Time domain signal, average of the body acceleration standard deviation value on Z axis.
- **tGravityAcc-mean()-X**: Time domain signal, average of the gravity acceleration mean value on X axis.
- **tGravityAcc-mean()-Y**: Time domain signal, average of the gravity acceleration mean value on Y axis.
- **tGravityAcc-mean()-Z**: Time domain signal, average of the gravity acceleration mean value on Z axis.
- **tGravityAcc-std()-X**: Time domain signal, average of the gravity acceleration standard deviation value on X axis.
- **tGravityAcc-std()-Y**: Time domain signal, average of the gravity acceleration standard deviation value on Y axis.
- **tGravityAcc-std()-Z**: Time domain signal, average of the gravity acceleration standard deviation value on Z axis.
- **tBodyAccJerk-mean()-X**: Time domain signal, average of the body acceleration jerk mean value on X axis.
- **tBodyAccJerk-mean()-Y**: Time domain signal, average of the body acceleration jerk mean value on Y axis.
- **tBodyAccJerk-mean()-Z**: Time domain signal, average of the body acceleration jerk mean value on Z axis.
- **tBodyAccJerk-std()-X**: Time domain signal, average of the body acceleration jerk standard deviation value on X axis.
- **tBodyAccJerk-std()-Y**: Time domain signal, average of the body acceleration jerk standard deviation value on Y axis.
- **tBodyAccJerk-std()-Z**: Time domain signal, average of the body acceleration jerk standard deviation value on Z axis.
- **tBodyGyro-mean()-X**: Time domain signal, average of the body angular velocity mean value on X axis.
- **tBodyGyro-mean()-Y**: Time domain signal, average of the body angular velocity mean value on Y axis.
- **tBodyGyro-mean()-Z**: Time domain signal, average of the body angular velocity mean value on Z axis.
- **tBodyGyro-std()-X**: Time domain signal, average of the body angular velocity standard deviation value on X axis.
- **tBodyGyro-std()-Y**: Time domain signal, average of the body angular velocity standard deviation value on Y axis.
- **tBodyGyro-std()-Z**: Time domain signal, average of the body angular velocity standard deviation value on Z axis.
- **tBodyGyroJerk-mean()-X**: Time domain signal, average of the body angular velocity jerk mean value on X axis.
- **tBodyGyroJerk-mean()-Y**: Time domain signal, average of the body angular velocity jerk mean value on Y axis.
- **tBodyGyroJerk-mean()-Z**: Time domain signal, average of the body angular velocity jerk mean value on Z axis.
- **tBodyGyroJerk-std()-X**: Time domain signal, average of the body angular velocity jerk standard deviation value on X axis.
- **tBodyGyroJerk-std()-Y**: Time domain signal, average of the body angular velocity jerk standard deviation value on Y axis.
- **tBodyGyroJerk-std()-Z**: Time domain signal, average of the body angular velocity jerk standard deviation value on Z axis.
- **tBodyAccMag-mean()**: Time domain signal, average of the body acceleration magnitude mean value.
- **tBodyAccMag-std()**: Time domain signal, average of the body acceleration magnitude standard deviation value.
- **tGravityAccMag-mean()**: Time domain signal, average of the gravity acceleration magnitude mean value.
- **tGravityAccMag-std()**: Time domain signal, average of the gravity acceleration magnitude standard deviation value.
- **tBodyAccJerkMag-mean()**: Time domain signal, average of the body acceleration jerk magnitude mean value.
- **tBodyAccJerkMag-std()**: Time domain signal, average of the body acceleration jerk magnitude standard deviation value.
- **tBodyGyroMag-mean()**: Time domain signal, average of the body angular velocity magnitude mean value.
- **tBodyGyroMag-std()**: Time domain signal, average of the body angular velocity magnitude standard deviation value.
- **tBodyGyroJerkMag-mean()**: Time domain signal, average of the body angular velocity jerk magnitude mean value.
- **tBodyGyroJerkMag-std()**: Time domain signal, average of the body angular velocity jerk magnitude standard deviation value.
- **fBodyAcc-mean()-X**: Frequency domain signal, average of the body acceleration mean value on X axis.
- **fBodyAcc-mean()-Y**: Frequency domain signal, average of the body acceleration mean value on Y axis.
- **fBodyAcc-mean()-Z**: Frequency domain signal, average of the body acceleration mean value on Z axis.
- **fBodyAcc-std()-X**: Frequency domain signal, average of the body acceleration standard deviation value on X axis.
- **fBodyAcc-std()-Y**: Frequency domain signal, average of the body acceleration standard deviation value on Y axis.
- **fBodyAcc-std()-Z**: Frequency domain signal, average of the body acceleration standard deviation value on Z axis.
- **fBodyAccJerk-mean()-X**: Frequency domain signal, average of the body acceleration jerk mean value on X axis.
- **fBodyAccJerk-mean()-Y**: Frequency domain signal, average of the body acceleration jerk mean value on Y axis.
- **fBodyAccJerk-mean()-Z**: Frequency domain signal, average of the body acceleration jerk mean value on Z axis.
- **fBodyAccJerk-std()-X**: Frequency domain signal, average of the body acceleration jerk standard deviation value on X axis.
- **fBodyAccJerk-std()-Y**: Frequency domain signal, average of the body acceleration jerk standard deviation value on Y axis.
- **fBodyAccJerk-std()-Z**: Frequency domain signal, average of the body acceleration jerk standard deviation value on Z axis.
- **fBodyGyro-mean()-X**: Frequency domain signal, average of the body angular velocity mean value on X axis.
- **fBodyGyro-mean()-Y**: Frequency domain signal, average of the body angular velocity mean value on Y axis.
- **fBodyGyro-mean()-Z**: Frequency domain signal, average of the body angular velocity mean value on Z axis.
- **fBodyGyro-std()-X**: Frequency domain signal, average of the body angular velocity standard deviation value on X axis.
- **fBodyGyro-std()-Y**: Frequency domain signal, average of the body angular velocity standard deviation value on Y axis.
- **fBodyGyro-std()-Z**: Frequency domain signal, average of the body angular velocity standard deviation value on Z axis.
- **fBodyAccMag-mean()**: Frequency domain signal, average of the body acceleration magnitude mean value.
- **fBodyAccMag-std()**: Frequency domain signal, average of the body acceleration magnitude standard deviation value.
- **fBodyBodyAccJerkMag-mean()**: Frequency domain signal, average of the body acceleration jerk magnitude mean value.
- **fBodyBodyAccJerkMag-std()**: Frequency domain signal, average of the body acceleration jerk magnitude standard deviation value.
- **fBodyBodyGyroMag-mean()**: Frequency domain signal, average of the body angular velocity magnitude mean value.
- **fBodyBodyGyroMag-std()**: Frequency domain signal, average of the body angular velocity magnitude standard deviation value.
- **fBodyBodyGyroJerkMag-mean()**: Frequency domain signal, average of the body angular velocity jerk magnitude mean value.
- **fBodyBodyGyroJerkMag-std()**: Frequency domain signal, average of the body angular velocity jerk magnitude standard deviation value.



