Code Book for UCI-HAR tidy data set:

UCI-HAR tidy data set is got by preprocessing the data obtained from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
This tidy data set has dimensions 180x81(180 rows and 81 columns).

This tidy data set gives the information about the average values of the each of the mean and standard deviation measurements.
These measurements are a collection of feature vectors calculated by using embedded accelerometer and gyroscope.
These experiments were carried out with 30 volunteers and these measurements were calculated by each individual performing six activites : (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
A full description of this experiment can be found here : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The measurements were pre-procesed and the following tidy data set was obtained. The variables in the tidy data set are the following:
Column 1 : activity : This column indicates the activity performed by the subject.It may contain any of these values:
           1 WALKING
	   2 WALKING_UPSTAIRS
	   3 WALKING_DOWNSTAIRS
	   4 SITTING
	   5 STANDING
	   6 LAYING

Column 2: subject : This column represents the subject id(the id of teh individual who performed the activity). It may be a value between 1 and 30.

Column 3-81 : These columns represent the average of each of the mean and standard deviation measurements for each activity performed by each individual.Since each feature is normalized between [-1,1], the average values are also between [-1,1].
Column 3-81 are the following respectively:

  Col 3:"tBodyAcc-mean()-X"               
  Col 4:"tBodyAcc-mean()-Y"              
  Col 5:"tBodyAcc-mean()-Z"               
  Col 6:"tBodyAcc-std()-X"               
  Col 7:"tBodyAcc-std()-Y"                
  Col 8:"tBodyAcc-std()-Z"               
  Col 9:"tGravityAcc-mean()-X"            
  Col 10:"tGravityAcc-mean()-Y"           
  Col 11:"tGravityAcc-mean()-Z"            
  Col 12:"tGravityAcc-std()-X"            
  Col 13:"tGravityAcc-std()-Y"             
  Col 14:"tGravityAcc-std()-Z"            
  Col 15:"tBodyAccJerk-mean()-X"           
  Col 16:"tBodyAccJerk-mean()-Y"          
  Col 17:"tBodyAccJerk-mean()-Z"           
  Col 18:"tBodyAccJerk-std()-X"           
  Col 19:"tBodyAccJerk-std()-Y"            
  Col 20:"tBodyAccJerk-std()-Z"           
  Col 21:"tBodyGyro-mean()-X"              
  Col 22:"tBodyGyro-mean()-Y"             
  Col 23:"tBodyGyro-mean()-Z"              
  Col 24:"tBodyGyro-std()-X"              
  Col 25:"tBodyGyro-std()-Y"               
  Col 26:"tBodyGyro-std()-Z"              
  Col 27:"tBodyGyroJerk-mean()-X"          
  Col 28:"tBodyGyroJerk-mean()-Y"         
  Col 29:"tBodyGyroJerk-mean()-Z"          
  Col 30:"tBodyGyroJerk-std()-X"          
  Col 31:"tBodyGyroJerk-std()-Y"           
  Col 32:"tBodyGyroJerk-std()-Z"          
  Col 33:"tBodyAccMag-mean()"              
  Col 34:"tBodyAccMag-std()"              
  Col 35:"tGravityAccMag-mean()"           
  Col 36:"tGravityAccMag-std()"           
  Col 37:"tBodyAccJerkMag-mean()"          
  Col 38:"tBodyAccJerkMag-std()"          
  Col 39:"tBodyGyroMag-mean()"             
  Col 40:"tBodyGyroMag-std()"             
  Col 41:"tBodyGyroJerkMag-mean()"         
  Col 42:"tBodyGyroJerkMag-std()"         
  Col 43:"fBodyAcc-mean()-X"               
  Col 44:"fBodyAcc-mean()-Y"              
  Col 45:"fBodyAcc-mean()-Z"               
  Col 46:"fBodyAcc-std()-X"               
  Col 47:"fBodyAcc-std()-Y"                
  Col 48:"fBodyAcc-std()-Z"               
  Col 49:"fBodyAcc-meanFreq()-X"           
  Col 50:"fBodyAcc-meanFreq()-Y"          
  Col 51:"fBodyAcc-meanFreq()-Z"           
  Col 52:"fBodyAccJerk-mean()-X"          
  Col 53:"fBodyAccJerk-mean()-Y"           
  Col 54:"fBodyAccJerk-mean()-Z"          
  Col 55:"fBodyAccJerk-std()-X"            
  Col 56:"fBodyAccJerk-std()-Y"           
  Col 57:"fBodyAccJerk-std()-Z"       
  Col 58:"fBodyAccJerk-meanFreq()-X"      
  Col 59:"fBodyAccJerk-meanFreq()-Y"       
  Col 60:"fBodyAccJerk-meanFreq()-Z"      
  Col 61:"fBodyGyro-mean()-X"              
  Col 62:"fBodyGyro-mean()-Y"             
  Col 63:"fBodyGyro-mean()-Z"              
  Col 64:"fBodyGyro-std()-X"              
  Col 65:"fBodyGyro-std()-Y"               
  Col 66:"fBodyGyro-std()-Z"              
  Col 67:"fBodyGyro-meanFreq()-X"          
  Col 68:"fBodyGyro-meanFreq()-Y"         
  Col 69:"fBodyGyro-meanFreq()-Z"          
  Col 70:"fBodyAccMag-mean()"             
  Col 71:"fBodyAccMag-std()"               
  Col 72:"fBodyAccMag-meanFreq()"         
  Col 73:"fBodyBodyAccJerkMag-mean()"      
  Col 74:"fBodyBodyAccJerkMag-std()"      
  Col 75:"fBodyBodyAccJerkMag-meanFreq()"  
  Col 76:"fBodyBodyGyroMag-mean()"        
  Col 77:"fBodyBodyGyroMag-std()"          
  Col 78:"fBodyBodyGyroMag-meanFreq()"    
  Col 79:"fBodyBodyGyroJerkMag-mean()"     
  Col 80:"fBodyBodyGyroJerkMag-std()"     
  Col 81:"fBodyBodyGyroJerkMag-meanFreq()"
 
         The mean and standard deviation measurements are got from a collection of 561 feature vectors. These feature vectors are got in the following methods:

	 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
	 Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
	 Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

	 These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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
		mad(): Median absolute deviation 
		max(): Largest value in array
		min(): Smallest value in array
		sma(): Signal magnitude area
		energy(): Energy measure. Sum of the squares divided by the number of values. 
		iqr(): Interquartile range 
		entropy(): Signal entropy
		arCoeff(): Autorregresion coefficients with Burg order equal to 4
		correlation(): correlation coefficient between two signals
		maxInds(): index of the frequency component with largest magnitude
		meanFreq(): Weighted average of the frequency components to obtain a mean frequency
		skewness(): skewness of the frequency domain signal 
		kurtosis(): kurtosis of the frequency domain signal 
		bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
		angle(): Angle between to vectors.

	Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

		gravityMean
		tBodyAccMean
		tBodyAccJerkMean
		tBodyGyroMean
		tBodyGyroJerkMean
