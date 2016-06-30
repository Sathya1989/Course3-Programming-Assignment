==================================================================
UCI - HAR tidy Average dataset
Version 1.0
==================================================================

This README.md file gives information about: 1. the original dataset, 
                                             2. the pre-processing steps done to obtain the UCI-HAR dataset,
                                             3. the UCI-HAR tidy Average dataset

The UCI-HAR tidy Average dataset was obtained by preprocessing the data obtained from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
This tidy data set has dimensions 180x81(180 rows and 81 columns).

This tidy data set gives the information about the average values of the each of the mean and standard deviation measurements.
These measurements are a collection of feature vectors calculated by using embedded accelerometer and gyroscope.
These experiments were carried out with 30 volunteers and these measurements were calculated by each individual performing six activites : (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
A full description of this experiment can be found here : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

==================================================================
1. The Original data set
==================================================================

The original data set obtained from the link https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip had 7352 training data sets and 2947 test data sets.
For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

==================================================================
2. The Pre-processing steps
==================================================================

Steps:
1.Read all the data files:
     i) test data set(./UCI HAR Dataset/test/X_test.txt)
    ii) train data set(./UCI HAR Dataset/train/X_train.txt)
   iii) test subjects(./UCI HAR Dataset/test/subject_test.txt)
    iv) train subjects(./UCI HAR Dataset/train/subject_train.txt)
     v) test activity labels(./UCI HAR Dataset/test/y_test.txt)
    vi) train activity labels(./UCI HAR Dataset/train/y_train.txt)
   vii) activity labels(./UCI HAR Dataset/activity_labels.txt)
  viii) features(./UCI HAR Dataset/features.txt)

2.Assign variable names(column names) to the dataframes obtained from train and test datas, train and test subjects, train and test activities.

3.Combine the dataframes of test subject,test activity and test data into a single test dataset.

4.Combine the dataframes of train subject,train activity and train data into a single train dataset.

5.Merge both train and test datasets. This is the final merged dataset.

6.From the obtained dataset, extract only the columns of measurements having mean and standard deviation.

7. Create a new, independent,tidy dataset holding the average of each extracted column for each activity and each subject.

Following these steps, we arrived at the tidy, independent average data set of UCI-HAR.

==================================================================
3. The UCI-HAR tidy average dataset
==================================================================

The UCI-HAR tidy average dataset has the following variable names:

	Column 1 : activity : This column indicates the activity performed by the subject.
	Column 2: subject : This column represents the subject id(the id of teh individual who performed the activity).
	Column 3-81 : These columns represent the average of each of the mean and standard deviation measurements for each activity performed by each individual.

 


