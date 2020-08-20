The data set derived from the original files contains all 561 variables (described in the Features.txt file) and two
more variables: activity and subject.

The variable names are modified to provide more 'human-readable' labels by substituting parts of their names with complete words.
The rules used are described below:

- a 't' at the beginning was substituted by the phrase 'timedomain'
- a 'f' at the beginning was substituted by the phrase 'frequencydomain'
- 'Acc' was translated into 'acceleration'
- 'Gyro' was translated into 'angularvelocity'
- 'Mag' was translated into 'magnitude'
- 'std' was translated into 'stddev' which stands for standard deviation
- 'X' was translated into 'axisx'
- 'Y' was translated into 'axisy'
- 'Z' was translated into 'axisz'

Characters such as (), -, spaces, were removed and all letter lowercased.

The resulting set of variables in the final data set are average calculated by activity and subject.
The relation between the names in final resulting data set and the original files are described below.

Column number - Final data set name : Name in original files

1-activitysubjectcombination
2-timedomainbodyaccelerationmeanaxisx: tBodyAcc-mean()-X
3-timedomainbodyaccelerationmeanaxisy: tBodyAcc-mean()-Y
4-timedomainbodyaccelerationmeanaxisz: tBodyAcc-mean()-Z
5-timedomainbodyaccelerationstddevaxisx: tBodyAcc-std()-X
6-timedomainbodyaccelerationstddevaxisy: tBodyAcc-std()-Y
7-timedomainbodyaccelerationstddevaxisz: tBodyAcc-std()-Z
8-timedomaingravityaccelerationmeanaxisx: tGravityAcc-mean()-X
9-timedomaingravityaccelerationmeanaxisy: tGravityAcc-mean()-Y
10-timedomaingravityaccelerationmeanaxisz: tGravityAcc-mean()-Z
11-timedomaingravityaccelerationstddevaxisx: tGravityAcc-std()-X
12-timedomaingravityaccelerationstddevaxisy: tGravityAcc-std()-Y
13-timedomaingravityaccelerationstddevaxisz: tGravityAcc-std()-Z
14-timedomainbodyaccelerationjerkmeanaxisx: tBodyAccJerk-mean()-X
15-timedomainbodyaccelerationjerkmeanaxisy: tBodyAccJerk-mean()-Y
16-timedomainbodyaccelerationjerkmeanaxisz: tBodyAccJerk-mean()-Z
17-timedomainbodyaccelerationjerkstddevaxisx: tBodyAccJerk-std()-X
18-timedomainbodyaccelerationjerkstddevaxisy: tBodyAccJerk-std()-Y
19-timedomainbodyaccelerationjerkstddevaxisz: tBodyAccJerk-std()-Z
20-timedomainbodyangularvelocitymeanaxisx: tBodyGyro-mean()-X
21-timedomainbodyangularvelocitymeanaxisy: tBodyGyro-mean()-Y
22-timedomainbodyangularvelocitymeanaxisz: tBodyGyro-mean()-Z
23-timedomainbodyangularvelocitystddevaxisx: tBodyGyro-std()-X
24-timedomainbodyangularvelocitystddevaxisy: tBodyGyro-std()-Y
25-timedomainbodyangularvelocitystddevaxisz: tBodyGyro-std()-Z
26-timedomainbodyangularvelocityjerkmeanaxisx: tBodyGyroJerk-mean()-X
27-timedomainbodyangularvelocityjerkmeanaxisy: tBodyGyroJerk-mean()-Y
28-timedomainbodyangularvelocityjerkmeanaxisz: tBodyGyroJerk-mean()-Z
29-timedomainbodyangularvelocityjerkstddevaxisx: tBodyGyroJerk-std()-X 
30-timedomainbodyangularvelocityjerkstddevaxisy: tBodyGyroJerk-std()-Y
31-timedomainbodyangularvelocityjerkstddevaxisz: tBodyGyroJerk-std()-Z
32-timedomainbodyaccelerationmagnitudemean: tBodyAccMag-mean()
33-timedomainbodyaccelerationmagnitudestddev: tBodyAccMag-std()
34-timedomaingravityaccelerationmagnitudemean: tGravityAccMag-mean()
35-timedomaingravityaccelerationmagnitudestddev: tGravityAccMag-std()
36-timedomainbodyaccelerationjerkmagnitudemean: tBodyAccJerkMag-mean()
37-timedomainbodyaccelerationjerkmagnitudestddev: tBodyAccJerkMag-std()
38-timedomainbodyangularvelocitymagnitudemean: tBodyGyroMag-mean()
39-timedomainbodyangularvelocitymagnitudestddev: tBodyGyroMag-std()
40-timedomainbodyangularvelocityjerkmagnitudemean: tBodyGyroJerkMag-mean()
41-timedomainbodyangularvelocityjerkmagnitudestddev: tBodyGyroJerkMag-std()
42-frequencydomainbodyaccelerationmeanaxisx: fBodyAcc-mean()-X
43-frequencydomainbodyaccelerationmeanaxisy: fBodyAcc-mean()-Y
44-frequencydomainbodyaccelerationmeanaxisz: fBodyAcc-mean()-Z
45-frequencydomainbodyaccelerationstddevaxisx: fBodyAcc-std()-X
46-frequencydomainbodyaccelerationstddevaxisy: fBodyAcc-std()-Y
47-frequencydomainbodyaccelerationstddevaxisz: fBodyAcc-std()-Z
48-frequencydomainbodyaccelerationjerkmeanaxisx: fBodyAccJerk-mean()-X
49-frequencydomainbodyaccelerationjerkmeanaxisy: fBodyAccJerk-mean()-Y
50-frequencydomainbodyaccelerationjerkmeanaxisz: fBodyAccJerk-mean()-Z
51-frequencydomainbodyaccelerationjerkstddevaxisx: fBodyAccJerk-std()-X
52-frequencydomainbodyaccelerationjerkstddevaxisy: fBodyAccJerk-std()-Y
53-frequencydomainbodyaccelerationjerkstddevaxisz: fBodyAccJerk-std()-Z
54-frequencydomainbodyangularvelocitymeanaxisx: fBodyGyro-mean()-X
55-frequencydomainbodyangularvelocitymeanaxisy: fBodyGyro-mean()-Y
56-frequencydomainbodyangularvelocitymeanaxisz: fBodyGyro-mean()-Z
57-frequencydomainbodyangularvelocitystddevaxisx: fBodyGyro-std()-X
58-frequencydomainbodyangularvelocitystddevaxisy: fBodyGyro-std()-Y
59-frequencydomainbodyangularvelocitystddevaxisz: fBodyGyro-std()-Z
60-frequencydomainbodyaccelerationmagnitudemean: fBodyAccMag-mean()
61-frequencydomainbodyaccelerationmagnitudestddev: fBodyAccMag-std()
62-frequencydomainbodybodyaccelerationjerkmagnitudemean: fBodyBodyAccJerkMag-mean()
63-frequencydomainbodybodyaccelerationjerkmagnitudestddev: fBodyBodyAccJerkMag-std()

For more details, an extract of the original "Features.txt" file is included:
-----------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

