
# Code Book

## Variables
The categories and variables present in the dataset used are as follows:

### Activities
---
1. Walking
2. Walking upstairs
3. Walking downstairs
4. Sitting
5. Standing
6. Laying

### Sensor Signals
---
- Time domain body accelerometer (x,y,z)
- Time domain gravity accelerometer (x,y,z)
- Time domain body accelerometer jerk (x,y,z)
- Time domain body gyroscope (x,y,z)
- Time domain body gyroscope jerk (x,y,z)
- Time domain body accelerometer magnintude
- Time domain gravity accelerometer magnitude
- Time domain body accelerometer jerk magnitude
- Time domain body gyroscope magnitude
- Time domain body gyroscope jerk magnitude
- Frequency domain body accelerometer (x,y,z)
- Frequency domain body acceleromter jerk (x,y,z)
- Frequency domain body gyroscope (x,y,z)
- Frequency domain body accelerometer magnitude
- Frequency domain body accelerometer jerk magnitude
- Frequency domain body gyroscope magnitude
- Frequency domain body gyroscope jerk magnitude

### Estimated Variables (based upon sensor signals)
---
- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values. 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude
- meanFreq(): Weighted average of the frequency components to obtain a mean frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal 
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
- angle(): Angle between to vectors.

## Summary Choices
No variables were excluded; after merging the "test" and "train" datasets for 'x' and 'y' dimensions, averages (mean) of each variable was calculated for each subject
## Study Design
Data was obtained from the "Human Activity Recognition Using Smartphones Dataset". As per the README:
> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
