Codebook--Samsung dataset
=================

The varibles indicates the features which are selected for this database come from the accelerometer and gyroscope 3-axial raw signals timedomain_accelerometer-XYZ and timedomain_gyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timesdomain_body_accelerometer-XYZ and timedomain_gravity_accelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timedomain_body_accelerometer_jerk-XYZ and timedomain_body_gyroscope_jerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timedomain_body_accelerometer_magnitude, timedomain_gravity_accelerometer_magnitude, timedomain_body_accelerometer_jerk_magnitude, timedomain_body_gyroscope_magnitude, timedomain_body_gyroscope_jerk_magnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencydomain_body_accelerometer-XYZ, frequencydomain_body_accelerometer_jerk-XYZ, frequencydomain_body_gyroscope-XYZ, frequencydomain_body_accelerometer_jerk_magnitude, frequencydomain_body_gyroscope_magnitude, frequencydomain_body_gyroscope_jerk_magnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
all these signals are measured by mean value (with "_mean" as suffix) and standard error (with "_std" as suffix)
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timedomain_body_accelerometer_mean-XYZ
timedomain_body_accelerometer_std-XYZ
timedomain_gravity_accelerometer_mean-XYZ
timedomain_gravity_accelerometer_std-XYZ
timedomain_body_accelerometer_jerk_mean-XYZ
timedomain_body_accelerometer_jerk_std-XYZ
timedomain_body_gyroscope_mean-XYZ
timedomain_body_gyroscope_std-XYZ
timedomain_body_gyro_jerk_mean-XYZ
timedomain_body_gyro_jerk_std-XYZ
timedomain_body_accelerometer_magnitude_mean
timedomain_body_accelerometer_magnitude_std
timedomain_gravity_accelerometer_magnitude_mean
timedomain_gravity_accelerometer_magnitude_std
timedomain_body_accelerometer_jerk_magnitude_mean
timedomain_body_accelerometer_jerk_magnitude_std
timedomain_body_gyroscope_magnitude_mean
timedomain_body_gyroscope_magnitude_std
timedomain_body_gyroscope_jerk_magnitude_mean
timedomain_body_gyroscope_jerk_magnitude_std
frequencydomain_body_accelerometer_mean-XYZ
frequencydomain_body_accelerometer_std-XYZ
frequencydomain_body_accelerometer_jerk_mean-XYZ
frequencydomain_body_accelerometer_jerk_std-XYZ
frequencydomain_body_gyroscope_mean-XYZ
frequencydomain_body_gyroscope_std-XYZ
frequencydomain_body_accelerometer_magnitude_mean
frequencydomain_body_accelerometer_magnitude_std
frequencydomain_body_accelerometer_jerk_magnitude_mean
frequencydomain_body_accelerometer_jerk_magnitude_std
frequencydomain_body_gyroscope_magnitude_mean
frequencydomain_body_gyroscope_magnitude_std
frequencydomain_body_gyroscope_jerk_magnitude_mean
frequencydomain_body_gyroscope_jerk_magnitude_std

Two extra varibles are:
subject: identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
activity: indicates 6 different activities performed by subjects: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The dataset_average summarized the mean value for each varibles (excluding subject and activity), grouping by each subject and each activity. 



