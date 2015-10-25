#Tidy Data Variables 
Activity_Name	1
	Names of Different Activities
				1 WALKING
				2 WALKING_UPSTAIRS
				3 WALKING_DOWNSTAIRS
				4 SITTING
				5 STANDING
				6 LAYING
Subject		2
	identifies the subject who performed the activity for each window sample
	1..30 Unique identifier assigned
<Other Colums> 
	
		prefix 't' to denote time domain signal
		'f' to indicate frequency domain signals
		accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
		body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
		Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)
		magnitude of these three-dimensional signals calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
		frequency domain signals(fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag) 
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
				
				Data denotes average value of the signals under specified Activity_Name and by specified Subject in the same row
		
		


