DATA DICTIONARY – Samsung Captured Activity Measures
====================================================

AvgSummary dataset
------------------

ParticipantId

-   Unique numbers
-   Identifier of subjects who participated in the study

    -   1..999999 Unique identifier assigned to each participant

ActivityName (must include blank line before to signal full list, 4
spaces b/4 +)

-   Name of physical activity partaken as part of study

    -   1 WALKING
    -   2 WALKING\_UPSTAIRS
    -   3 WALKING\_DOWNSTAIRS
    -   4 SITTING
    -   5 STANDING
    -   6 LAYING

For below 79 mean and std dev activity measurements,

-   Average of each measurements for a particular activity and
    participant.  
-   For example, taking all the WALKING activities for participant 1,
    what is the average of variable “time\_BodyAcc\_mean\_X”?
-   see subject\_combined dataset section below for individual data
    description

    1.  time\_BodyAcc\_mean\_X
    2.  time\_BodyAcc\_mean\_Y
    3.  time\_BodyAcc\_mean\_Z
    4.  time\_BodyAcc\_std\_X
    5.  time\_BodyAcc\_std\_Y
    6.  time\_BodyAcc\_std\_Z
    7.  time\_GravityAcc\_mean\_X
    8.  time\_GravityAcc\_mean\_Y
    9.  time\_GravityAcc\_mean\_Z
    10. time\_GravityAcc\_std\_X
    11. time\_GravityAcc\_std\_Y
    12. time\_GravityAcc\_std\_Z
    13. time\_BodyAccJerk\_mean\_X
    14. time\_BodyAccJerk\_mean\_Y
    15. time\_BodyAccJerk\_mean\_Z
    16. time\_BodyAccJerk\_std\_X
    17. time\_BodyAccJerk\_std\_Y
    18. time\_BodyAccJerk\_std\_Z
    19. time\_BodyGyro\_mean\_X
    20. time\_BodyGyro\_mean\_Y
    21. time\_BodyGyro\_mean\_Z
    22. time\_BodyGyro\_std\_X
    23. time\_BodyGyro\_std\_Y
    24. time\_BodyGyro\_std\_Z
    25. time\_BodyGyroJerk\_mean\_X
    26. time\_BodyGyroJerk\_mean\_Y
    27. time\_BodyGyroJerk\_mean\_Z
    28. time\_BodyGyroJerk\_std\_X
    29. time\_BodyGyroJerk\_std\_Y
    30. time\_BodyGyroJerk\_std\_Z
    31. time\_BodyAccMag\_mean
    32. time\_BodyAccMag\_std
    33. time\_GravityAccMag\_mean
    34. time\_GravityAccMag\_std
    35. time\_BodyAccJerkMag\_mean
    36. time\_BodyAccJerkMag\_std
    37. time\_BodyGyroMag\_mean
    38. time\_BodyGyroMag\_std
    39. time\_BodyGyroJerkMag\_mean
    40. time\_BodyGyroJerkMag\_std
    41. freq\_BodyAcc\_mean\_X
    42. freq\_BodyAcc\_mean\_Y
    43. freq\_BodyAcc\_mean\_Z
    44. freq\_BodyAcc\_std\_X
    45. freq\_BodyAcc\_std\_Y
    46. freq\_BodyAcc\_std\_Z
    47. freq\_BodyAcc\_meanFreq\_X
    48. freq\_BodyAcc\_meanFreq\_Y
    49. freq\_BodyAcc\_meanFreq\_Z
    50. freq\_BodyAccJerk\_mean\_X
    51. freq\_BodyAccJerk\_mean\_Y
    52. freq\_BodyAccJerk\_mean\_Z
    53. freq\_BodyAccJerk\_std\_X
    54. freq\_BodyAccJerk\_std\_Y
    55. freq\_BodyAccJerk\_std\_Z
    56. freq\_BodyAccJerk\_meanFreq\_X
    57. freq\_BodyAccJerk\_meanFreq\_Y
    58. freq\_BodyAccJerk\_meanFreq\_Z
    59. freq\_BodyGyro\_mean\_X
    60. freq\_BodyGyro\_mean\_Y
    61. freq\_BodyGyro\_mean\_Z
    62. freq\_BodyGyro\_std\_X
    63. freq\_BodyGyro\_std\_Y
    64. freq\_BodyGyro\_std\_Z
    65. freq\_BodyGyro\_meanFreq\_X
    66. freq\_BodyGyro\_meanFreq\_Y
    67. freq\_BodyGyro\_meanFreq\_Z
    68. freq\_BodyAccMag\_mean
    69. freq\_BodyAccMag\_std
    70. freq\_BodyAccMag\_meanFreq
    71. freq\_BodyBodyAccJerkMag\_mean
    72. freq\_BodyBodyAccJerkMag\_std
    73. freq\_BodyBodyAccJerkMag\_meanFreq
    74. freq\_BodyBodyGyroMag\_mean
    75. freq\_BodyBodyGyroMag\_std
    76. freq\_BodyBodyGyroMag\_meanFreq
    77. freq\_BodyBodyGyroJerkMag\_mean
    78. freq\_BodyBodyGyroJerkMag\_std
    79. freq\_BodyBodyGyroJerkMag\_meanFreq

Subject\_combined dataset
-------------------------

ParticipantId

-   Unique numbers
-   Identifier of subjects who participated in the study

    -   1..999999 Unique identifier assigned to each participant

ActivityName (must include blank line before to signal full list, 4
spaces b/4 +)

-   Name of physical activity partaken as part of study

    -   1 WALKING
    -   2 WALKING\_UPSTAIRS
    -   3 WALKING\_DOWNSTAIRS
    -   4 SITTING
    -   5 STANDING
    -   6 LAYING

time\_BodyAcc\_mean\_X (must leave space after \*, no need to start new
line)

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body acceleration on x-axis by averaging the signals in
    a signal window sample
-   See Special Note 1 below for more details on how signal was filtered
    and separated

time\_BodyAcc\_mean\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body acceleration on y-axis by averaging the signals in
    a signal window sample
-   See Special Note 1 below for more details on how signal was filtered
    and separated

time\_BodyAcc\_mean\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body acceleration on z-axis by averaging the signals in
    a signal window sample
-   See Special Note 1 below for more details on how signal was filtered
    and separated

time\_BodyAcc\_std\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body acceleration on x-axis

time\_BodyAcc\_std\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body acceleration on y-axis

time\_BodyAcc\_std\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body acceleration on z-axis

time\_GravityAcc\_mean\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of time domain X-axis gravity acceleration signals having
    signal noise removed.
-   See Special Notes 1 for more details on how signal was filtered and
    separated.

time\_GravityAcc\_mean\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of time domain Y-axis gravity acceleration signals having
    signal noise removed.
-   See Special Notes 1 for more details on how signal was filtered and
    separated.

time\_GravityAcc\_mean\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of time domain Z-axis gravity acceleration signals having
    signal noise removed.
-   See Special Notes 1 for more details on how signal was filtered and
    separated.

time\_GravityAcc\_std\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time domain X-axis gravity acceleration
    signals.

time\_GravityAcc\_std\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time domain Y-axis gravity acceleration
    signals.

time\_GravityAcc\_std\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time domain Z-axis gravity acceleration
    signals.

time\_BodyAccJerk\_mean\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body acceleration jerk signals on X-axis by averaging
    the signals in a signal window sample

time\_BodyAccJerk\_mean\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body acceleration jerk signals on Y-axis by averaging
    the signals in a signal window sample

time\_BodyAccJerk\_mean\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body acceleration jerk signals on Z-axis by averaging
    the signals in a signal window sample

time\_BodyAccJerk\_std\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body acceleration jerk signals on X-axis

time\_BodyAccJerk\_std\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body acceleration jerk signals on Y-axis

time\_BodyAccJerk\_std\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body acceleration jerk signals on Z-axis

time\_BodyGyro\_mean\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body angular velocity on X-axis by averaging the
    signals in a signal window sample
-   See Special Notes 1 for more details on how signal was filtered and
    separated

time\_BodyGyro\_mean\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body angular velocity on Y-axis by averaging the
    signals in a signal window sample
-   See Special Notes 1 for more details on how signal was filtered and
    separated

time\_BodyGyro\_mean\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body angular velocity on Z-axis by averaging the
    signals in a signal window sample
-   See Special Notes 1 for more details on how signal was filtered and
    separated

time\_BodyGyro\_std\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body angular velocity on X-axis

time\_BodyGyro\_std\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body angular velocity on Y-axis

time\_BodyGyro\_std\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body angular velocity on Z-axis

time\_BodyGyroJerk\_mean\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body angular velocity jerk on X-axis signals by
    averaging the signals in a signal window sample

time\_BodyGyroJerk\_mean\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body angular velocity jerk on Y-axis signals by
    averaging the signals in a signal window sample

time\_BodyGyroJerk\_mean\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean of time body angular velocity jerk on Z-axis signals by
    averaging the signals in a signal window sample

time\_BodyGyroJerk\_std\_X

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body angular velocity jerk on X-axis

time\_BodyGyroJerk\_std\_Y

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body angular velocity jerk on Y-axis

time\_BodyGyroJerk\_std\_Z

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of time body angular velocity jerk on Z-axis

time\_BodyAccMag\_mean

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of magnitudes of the three-dimensional signals calculated
    using Euclidean norm for body acceleration

time\_BodyAccMag\_std

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of magnitudes of the three-dimensional signals
    calculated using Euclidean norm for body acceleration

time\_GravityAccMag\_mean

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of magnitudes of the three-dimensional signals calculated
    using Euclidean norm for gravity acceleration

time\_GravityAccMag\_std

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of magnitudes of the three-dimensional signals
    calculated using Euclidean norm for gravity acceleration

time\_BodyAccJerkMag\_mean

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of magnitudes of the three-dimensional signals calculated
    using Euclidean norm for body acceleration jerk

time\_BodyAccJerkMag\_std

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of magnitudes of the three-dimensional signals
    calculated using Euclidean norm for body acceleration jerk

time\_BodyGyroMag\_mean

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of magnitudes of the three-dimensional signals calculated
    using Euclidean norm for body angular velocity

time\_BodyGyroMag\_std

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of magnitudes of the three-dimensional signals
    calculated using Euclidean norm for body angular velocity

time\_BodyGyroJerkMag\_mean

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Mean value of magnitudes of the three-dimensional signals calculated
    using Euclidean norm for body angular velocity jerk

time\_BodyGyroJerkMag\_std

-   Frequency measured in complete cycle of a periodic signal that take
    place in one second (hz)
-   Standard deviation of magnitudes of the three-dimensional signals
    calculated using Euclidean norm for body angular velocity jerk

freq\_BodyAcc\_mean\_X

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration frequency X-axis

freq\_BodyAcc\_mean\_Y

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration frequency Y-axis

freq\_BodyAcc\_mean\_Z

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration frequency Z-axis

freq\_BodyAcc\_std\_X

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration frequency X-axis

freq\_BodyAcc\_std\_Y

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration frequency Y-axis

freq\_BodyAcc\_std\_Z

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration frequency Z-axis

freq\_BodyAcc\_meanFreq\_X

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration frequency X-axis. It is the weighted average of the
    frequency components to obtain a mean frequency

freq\_BodyAcc\_meanFreq\_Y

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration frequency Y-axis. It is the weighted average of the
    frequency components to obtain a mean frequency

freq\_BodyAcc\_meanFreq\_Z

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration frequency Z-axis. It is the weighted average of the
    frequency components to obtain a mean frequency

freq\_BodyAccJerk\_mean\_X

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency X-axis

freq\_BodyAccJerk\_mean\_Y

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency Y-axis

freq\_BodyAccJerk\_mean\_Z

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency Z-axis

freq\_BodyAccJerk\_std\_X

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency X-axis

freq\_BodyAccJerk\_std\_Y

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency Y-axis

freq\_BodyAccJerk\_std\_Z

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency Z-axis

freq\_BodyAccJerk\_meanFreq\_X

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency X-axis. It is the weighted average of
    the frequency components to obtain a mean frequency.

freq\_BodyAccJerk\_meanFreq\_Y

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency Y-axis. It is the weighted average of
    the frequency components to obtain a mean frequency.

freq\_BodyAccJerk\_meanFreq\_Z

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration jerk frequency Z-axis. It is the weighted average of
    the frequency components to obtain a mean frequency.

freq\_BodyGyro\_mean\_X

-   Mean value of Fast Fourier Transform (FFT) produced body angular
    velocity frequency X-axis

freq\_BodyGyro\_mean\_Y

-   Mean value of Fast Fourier Transform (FFT) produced body angular
    velocity frequency Y-axis

freq\_BodyGyro\_mean\_Z

-   Mean value of Fast Fourier Transform (FFT) produced body angular
    velocity frequency Z-axis

freq\_BodyGyro\_std\_X

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    angular velocity frequency X-axis

freq\_BodyGyro\_std\_Y

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    angular velocity frequency Y-axis

freq\_BodyGyro\_std\_Z

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    angular velocity frequency Z-axis

freq\_BodyGyro\_meanFreq\_X

-   Mean frequency of Fast Fourier Transform (FFT) produced body angular
    velocity frequency X-axis. It is the weighted average of the
    frequency components to obtain a mean frequency.

freq\_BodyGyro\_meanFreq\_Y

-   Mean frequency of Fast Fourier Transform (FFT) produced body angular
    velocity frequency Y-axis. It is the weighted average of the
    frequency components to obtain a mean frequency.

freq\_BodyGyro\_meanFreq\_Z

-   Mean frequency of Fast Fourier Transform (FFT) produced body angular
    velocity frequency Z-axis. It is the weighted average of the
    frequency components to obtain a mean frequency.

freq\_BodyAccMag\_mean

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration three-dimensional magnitude frequency

freq\_BodyAccMag\_std

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration three-dimensional magnitude frequency

freq\_BodyAccMag\_meanFreq

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration three-dimensional magnitude frequency. It is the
    weighted average of the frequency components to obtain a mean
    frequency.

freq\_BodyBodyAccJerkMag\_mean

-   Mean value of Fast Fourier Transform (FFT) produced body
    acceleration jerk three-dimensional magnitude frequency

freq\_BodyBodyAccJerkMag\_std

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    acceleration jerk three-dimensional magnitude frequency

freq\_BodyBodyAccJerkMag\_meanFreq

-   Mean frequency of Fast Fourier Transform (FFT) produced body
    acceleration jerk three-dimensional magnitude frequency. It is the
    weighted average of the frequency components to obtain a mean
    frequency.

freq\_BodyBodyGyroMag\_mean

-   Mean value of Fast Fourier Transform (FFT) produced body angular
    velocity three-dimensional magnitude frequency

freq\_BodyBodyGyroMag\_std

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    angular velocity three-dimensional magnitude frequency

freq\_BodyBodyGyroMag\_meanFreq

-   Mean frequency of Fast Fourier Transform (FFT) produced body angular
    velocity three-dimensional magnitude frequency. It is the weighted
    average of the frequency components to obtain a mean frequency.

freq\_BodyBodyGyroJerkMag\_mean

-   Mean value of Fast Fourier Transform (FFT) produced body angular
    velocity jerk three-dimensional magnitude frequency

freq\_BodyBodyGyroJerkMag\_std

-   Standard deviation of Fast Fourier Transform (FFT) produced body
    angular velocity jerk three-dimensional magnitude frequency

freq\_BodyBodyGyroJerkMag\_meanFreq

-   Mean frequency of Fast Fourier Transform (FFT) produced body angular
    velocity jerk three-dimensional magnitude frequency. It is the
    weighted average of the frequency components to obtain a mean
    frequency.

### Special Notes:

    1.  These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 hz.  Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
