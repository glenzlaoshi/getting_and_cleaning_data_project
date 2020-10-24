
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

Sensor Signals
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

Estimated Variables (based upon sensor signals)
---
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

## Summary Choices
No variables were excluded; after merging the "test" and "train" datasets for 'x' and 'y' dimensions, averages (mean) of each variable was calculated for each subject
## Study Design
