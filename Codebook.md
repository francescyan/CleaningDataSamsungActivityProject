{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww13280\viewh11840\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ---\
title: "Codebook"\
author: "Frances C Yan"\
date: "6/14/2019"\
output:\
  html_document: default\
  pdf_document: default\
---\
\
```\{r setup, include=FALSE\}\
knitr::opts_chunk$set(echo = TRUE)\
```\
\
#DATA DICTIONARY \'96 Samsung Captured Activity Measures\
\
##AvgSummary dataset\
\
ParticipantId  \
\
* Unique numbers\
* Identifier of subjects who participated in the study  \
\
    + 1..999999	Unique identifier assigned to each participant  \
\
ActivityName (must include blank line before to signal full list, 4 spaces b/4 +)\
\
* Name of physical activity partaken as part of study\
\
    + 1	WALKING\
    + 2	WALKING_UPSTAIRS \
    + 3 WALKING_DOWNSTAIRS\
    + 4 SITTING\
    + 5 STANDING\
    + 6 LAYING\
\
For below 79 mean and std dev activity measurements,\
\
* Average of each measurements for a particular activity and participant.  \
* For example, taking all the WALKING activities for participant 1, what is the average of variable \'93time_BodyAcc_mean_X\'94?\
* see subject_combined dataset section below for individual data description\
\
    1. time_BodyAcc_mean_X\
    2. time_BodyAcc_mean_Y\
    3. time_BodyAcc_mean_Z\
    4. time_BodyAcc_std_X\
    5. time_BodyAcc_std_Y\
    6. time_BodyAcc_std_Z\
    7. time_GravityAcc_mean_X\
    8. time_GravityAcc_mean_Y\
    9. time_GravityAcc_mean_Z\
    10. time_GravityAcc_std_X\
    11. time_GravityAcc_std_Y\
    12. time_GravityAcc_std_Z\
    13. time_BodyAccJerk_mean_X\
    14. time_BodyAccJerk_mean_Y\
    15. time_BodyAccJerk_mean_Z\
    16. time_BodyAccJerk_std_X\
    17. time_BodyAccJerk_std_Y\
    18. time_BodyAccJerk_std_Z\
    19. time_BodyGyro_mean_X\
    20. time_BodyGyro_mean_Y\
    21. time_BodyGyro_mean_Z\
    22. time_BodyGyro_std_X\
    23. time_BodyGyro_std_Y\
    24. time_BodyGyro_std_Z\
    25. time_BodyGyroJerk_mean_X\
    26. time_BodyGyroJerk_mean_Y\
    27. time_BodyGyroJerk_mean_Z\
    28. time_BodyGyroJerk_std_X\
    29. time_BodyGyroJerk_std_Y\
    30. time_BodyGyroJerk_std_Z\
    31. time_BodyAccMag_mean\
    32. time_BodyAccMag_std\
    33. time_GravityAccMag_mean\
    34. time_GravityAccMag_std\
    35. time_BodyAccJerkMag_mean\
    36. time_BodyAccJerkMag_std\
    37. time_BodyGyroMag_mean\
    38. time_BodyGyroMag_std\
    39. time_BodyGyroJerkMag_mean\
    40. time_BodyGyroJerkMag_std\
    41. freq_BodyAcc_mean_X\
    42. freq_BodyAcc_mean_Y\
    43. freq_BodyAcc_mean_Z\
    44. freq_BodyAcc_std_X\
    45. freq_BodyAcc_std_Y\
    46. freq_BodyAcc_std_Z\
    47. freq_BodyAcc_meanFreq_X\
    48. freq_BodyAcc_meanFreq_Y\
    49. freq_BodyAcc_meanFreq_Z\
    50. freq_BodyAccJerk_mean_X\
    51. freq_BodyAccJerk_mean_Y\
    52. freq_BodyAccJerk_mean_Z\
    53. freq_BodyAccJerk_std_X\
    54. freq_BodyAccJerk_std_Y\
    55. freq_BodyAccJerk_std_Z\
    56. freq_BodyAccJerk_meanFreq_X\
    57. freq_BodyAccJerk_meanFreq_Y\
    58. freq_BodyAccJerk_meanFreq_Z\
    59. freq_BodyGyro_mean_X\
    60. freq_BodyGyro_mean_Y\
    61. freq_BodyGyro_mean_Z\
    62. freq_BodyGyro_std_X\
    63. freq_BodyGyro_std_Y\
    64. freq_BodyGyro_std_Z\
    65. freq_BodyGyro_meanFreq_X\
    66. freq_BodyGyro_meanFreq_Y\
    67. freq_BodyGyro_meanFreq_Z\
    68. freq_BodyAccMag_mean\
    69. freq_BodyAccMag_std\
    70. freq_BodyAccMag_meanFreq\
    71. freq_BodyBodyAccJerkMag_mean\
    72. freq_BodyBodyAccJerkMag_std\
    73. freq_BodyBodyAccJerkMag_meanFreq\
    74. freq_BodyBodyGyroMag_mean\
    75. freq_BodyBodyGyroMag_std\
    76. freq_BodyBodyGyroMag_meanFreq\
    77. freq_BodyBodyGyroJerkMag_mean\
    78. freq_BodyBodyGyroJerkMag_std\
    79. freq_BodyBodyGyroJerkMag_meanFreq\
\
##Subject_combined dataset\
\
ParticipantId  \
\
* Unique numbers\
* Identifier of subjects who participated in the study  \
\
    + 1..999999	Unique identifier assigned to each participant  \
\
ActivityName (must include blank line before to signal full list, 4 spaces b/4 +)\
\
* Name of physical activity partaken as part of study\
\
    + 1	WALKING\
    + 2	WALKING_UPSTAIRS \
    + 3 WALKING_DOWNSTAIRS\
    + 4 SITTING\
    + 5 STANDING\
    + 6 LAYING\
\
time_BodyAcc_mean_X (must leave space after *, no need to start new line)\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body acceleration on x-axis by averaging the signals in a signal window sample\
* See Special Note 1 below for more details on how signal was filtered and separated\
\
time_BodyAcc_mean_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body acceleration on y-axis by averaging the signals in a signal window sample\
* See Special Note 1 below for more details on how signal was filtered and separated\
\
time_BodyAcc_mean_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body acceleration on z-axis by averaging the signals in a signal window sample\
* See Special Note 1 below for more details on how signal was filtered and separated\
\
time_BodyAcc_std_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body acceleration on x-axis\
\
time_BodyAcc_std_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body acceleration on y-axis\
\
time_BodyAcc_std_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body acceleration on z-axis\
\
time_GravityAcc_mean_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of time domain X-axis gravity acceleration signals having signal noise removed.\
* See Special Notes 1 for more details on how signal was filtered and separated.\
\
time_GravityAcc_mean_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of time domain Y-axis gravity acceleration signals having signal noise removed.\
* See Special Notes 1 for more details on how signal was filtered and separated.\
\
time_GravityAcc_mean_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of time domain Z-axis gravity acceleration signals having signal noise removed.\
* See Special Notes 1 for more details on how signal was filtered and separated.\
\
time_GravityAcc_std_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time domain X-axis gravity acceleration signals.\
\
time_GravityAcc_std_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time domain Y-axis gravity acceleration signals.\
\
time_GravityAcc_std_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time domain Z-axis gravity acceleration signals.\
\
time_BodyAccJerk_mean_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body acceleration jerk signals on X-axis by averaging the signals in a signal window sample\
\
time_BodyAccJerk_mean_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body acceleration jerk signals on Y-axis by averaging the signals in a signal window sample\
\
time_BodyAccJerk_mean_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body acceleration jerk signals on Z-axis by averaging the signals in a signal window sample\
\
time_BodyAccJerk_std_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body acceleration jerk signals on X-axis\
\
time_BodyAccJerk_std_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body acceleration jerk signals on Y-axis\
\
time_BodyAccJerk_std_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body acceleration jerk signals on Z-axis\
\
time_BodyGyro_mean_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body angular velocity on X-axis by averaging the signals in a signal window sample\
* See Special Notes 1 for more details on how signal was filtered and separated\
\
time_BodyGyro_mean_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body angular velocity on Y-axis by averaging the signals in a signal window sample\
* See Special Notes 1 for more details on how signal was filtered and separated\
\
time_BodyGyro_mean_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body angular velocity on Z-axis by averaging the signals in a signal window sample\
* See Special Notes 1 for more details on how signal was filtered and separated\
\
time_BodyGyro_std_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body angular velocity on X-axis\
\
time_BodyGyro_std_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body angular velocity on Y-axis\
\
time_BodyGyro_std_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body angular velocity on Z-axis\
\
time_BodyGyroJerk_mean_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body angular velocity jerk on X-axis signals by averaging the signals in a signal window sample\
\
time_BodyGyroJerk_mean_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body angular velocity jerk on Y-axis signals by averaging the signals in a signal window sample\
\
time_BodyGyroJerk_mean_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean of time body angular velocity jerk on Z-axis signals by averaging the signals in a signal window sample\
\
time_BodyGyroJerk_std_X\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body angular velocity jerk on X-axis\
\
time_BodyGyroJerk_std_Y\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body angular velocity jerk on Y-axis\
\
time_BodyGyroJerk_std_Z\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of time body angular velocity jerk on Z-axis\
\
time_BodyAccMag_mean\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of magnitudes of the three-dimensional signals calculated using Euclidean norm for body acceleration\
\
time_BodyAccMag_std\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of magnitudes of the three-dimensional signals calculated using Euclidean norm for body acceleration\
\
time_GravityAccMag_mean\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of magnitudes of the three-dimensional signals calculated using Euclidean norm for gravity acceleration\
\
time_GravityAccMag_std\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of magnitudes of the three-dimensional signals calculated using Euclidean norm for gravity acceleration\
\
time_BodyAccJerkMag_mean\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of magnitudes of the three-dimensional signals calculated using Euclidean norm for body acceleration jerk\
\
time_BodyAccJerkMag_std\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of magnitudes of the three-dimensional signals calculated using Euclidean norm for body acceleration jerk\
\
time_BodyGyroMag_mean\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of magnitudes of the three-dimensional signals calculated using Euclidean norm for body angular velocity\
\
time_BodyGyroMag_std\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of magnitudes of the three-dimensional signals calculated using Euclidean norm for body angular velocity\
\
time_BodyGyroJerkMag_mean\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Mean value of magnitudes of the three-dimensional signals calculated using Euclidean norm for body angular velocity jerk\
\
time_BodyGyroJerkMag_std\
\
* Frequency measured in complete cycle of a periodic signal that take place in one second (hz)\
* Standard deviation of magnitudes of the three-dimensional signals calculated using Euclidean norm for body angular velocity jerk\
\
freq_BodyAcc_mean_X\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration frequency X-axis\
\
freq_BodyAcc_mean_Y\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration frequency Y-axis\
\
freq_BodyAcc_mean_Z\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration frequency Z-axis\
\
freq_BodyAcc_std_X\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration frequency X-axis\
\
freq_BodyAcc_std_Y\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration frequency Y-axis\
\
freq_BodyAcc_std_Z\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration frequency Z-axis\
\
freq_BodyAcc_meanFreq_X\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration frequency X-axis.  It is the weighted average of the frequency components to obtain a mean frequency\
\
freq_BodyAcc_meanFreq_Y\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration frequency Y-axis.  It is the weighted average of the frequency components to obtain a mean frequency\
\
freq_BodyAcc_meanFreq_Z\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration frequency Z-axis.  It is the weighted average of the frequency components to obtain a mean frequency\
\
freq_BodyAccJerk_mean_X\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration jerk frequency X-axis\
\
freq_BodyAccJerk_mean_Y\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration jerk frequency Y-axis\
\
freq_BodyAccJerk_mean_Z\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration jerk frequency Z-axis\
\
freq_BodyAccJerk_std_X\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration jerk frequency X-axis\
\
freq_BodyAccJerk_std_Y\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration jerk frequency Y-axis\
\
freq_BodyAccJerk_std_Z\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration jerk frequency Z-axis\
\
freq_BodyAccJerk_meanFreq_X\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration jerk frequency X-axis.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyAccJerk_meanFreq_Y\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration jerk frequency Y-axis.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyAccJerk_meanFreq_Z\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration jerk frequency Z-axis.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyGyro_mean_X\
\
* Mean value of Fast Fourier Transform (FFT) produced body angular velocity frequency X-axis\
\
freq_BodyGyro_mean_Y\
\
* Mean value of Fast Fourier Transform (FFT) produced body angular velocity frequency Y-axis\
\
freq_BodyGyro_mean_Z\
\
* Mean value of Fast Fourier Transform (FFT) produced body angular velocity frequency Z-axis\
\
freq_BodyGyro_std_X\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body angular velocity frequency X-axis\
\
freq_BodyGyro_std_Y\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body angular velocity frequency Y-axis\
\
freq_BodyGyro_std_Z\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body angular velocity frequency Z-axis\
\
freq_BodyGyro_meanFreq_X\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body angular velocity frequency X-axis.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyGyro_meanFreq_Y\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body angular velocity frequency Y-axis.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyGyro_meanFreq_Z\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body angular velocity frequency Z-axis.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyAccMag_mean\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration three-dimensional magnitude frequency\
\
freq_BodyAccMag_std\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration three-dimensional magnitude frequency\
\
freq_BodyAccMag_meanFreq\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration three-dimensional magnitude frequency.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyBodyAccJerkMag_mean\
\
* Mean value of Fast Fourier Transform (FFT) produced body acceleration jerk three-dimensional magnitude frequency\
\
freq_BodyBodyAccJerkMag_std\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body acceleration jerk three-dimensional magnitude frequency\
\
freq_BodyBodyAccJerkMag_meanFreq\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body acceleration jerk three-dimensional magnitude frequency.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyBodyGyroMag_mean\
\
* Mean value of Fast Fourier Transform (FFT) produced body angular velocity three-dimensional magnitude frequency\
\
freq_BodyBodyGyroMag_std\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body angular velocity three-dimensional magnitude frequency\
\
freq_BodyBodyGyroMag_meanFreq\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body angular velocity three-dimensional magnitude frequency.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
freq_BodyBodyGyroJerkMag_mean\
\
* Mean value of Fast Fourier Transform (FFT) produced body angular velocity jerk three-dimensional magnitude frequency\
\
freq_BodyBodyGyroJerkMag_std\
\
* Standard deviation of Fast Fourier Transform (FFT) produced body angular velocity jerk three-dimensional magnitude frequency\
\
freq_BodyBodyGyroJerkMag_meanFreq\
\
* Mean frequency of Fast Fourier Transform (FFT) produced body angular velocity jerk three-dimensional magnitude frequency.  It is the weighted average of the frequency components to obtain a mean frequency.\
\
###Special Notes:\
\
    1.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 hz.  Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.}