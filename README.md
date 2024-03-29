The R script that cleaned and summarized activity measures is organized
in 10 steps. There are intermediate steps in between and script
execution follows the 10-step sequence. Below gives an overall approach
in completing this project. Next section describes the 10-step sequence
and final steps that met project requirements are bolded.

### Overall approach to subject\_combined

#### in combining and tidying the activity measure data

    1.  Combine train and test subject data
    2.  Join activity number (y_data) to get activity labels (WALKING, STANDING, etc.)
    3.  Combine train and test activity measurement (x_data) data
    4.  Tidy all feature labels into a vector
    5.  Extract and tidy mean and std only feature labels into another vector
    6.  Assign all feature label vector from step 4 to x_data
    7.  Cbind in order:
      i)  Cbind y_data to subject data
      ii) Subset of x_data that has column labels matching to the mean and std only feature labels from step 5,
      then cbind to subject data
      
    After this process, subject_combined data frame has below columns:

    1) Subject/participantId
    2) activityName (WALKING, STANDING, etc.)
    3) 79 activity measures (time_BodyAcc_mean_X, etc.)

### Overall approach to AvgSummary

#### Independent 2nd dataset

    1. Grouping subject_combined dataset from Step 7 by

    a) participantId and
    b) activityName

    2. then calculating the mean for each of the measure at participantId and activityName level

### 10 Step Sequence

Step 0.5

1.  Download project data zip file to local directory

Step 1 – **Merge train and test subject data**

1.  Read in subject\_train
2.  Read in subject\_test
3.  rbind to create subject\_combined  
    (Note column names are not assigned yet)

Step 1.5 – **Merge train and test activity no (y\_data)**

1.  Read in y\_train
2.  Read in y\_test
3.  cbind to create activity\_combined  
    (activityNo column name assigned)

Step 1.6 – activity labels

1.  Read in activity labels

Step 1.7 – **Use descriptive activity names to name activities**

1.  Join activity no to activity labels to get the corresponding
    activity names

Step 2 – **merge train and test activity measurements (x\_data)**

1.  Read in x\_train activity measurements
2.  Read in x\_test activity measurements
3.  Rbind to create measurement\_combined

Step 3 – feature labels

1.  Read in feature labels

Step 4 –

1.  Tidy all feature labels into a vector

Step 5 – **Appropriately label dataset with descriptive variable names**

1.  Assign all feature label vector to measurement\_combined

Step 6 –

1.  **Extract only mean & std dev for each variable**
2.  Tidy select feature labels into another vector

Step 6.5 –

1.  Cbind activityName to subject\_combined

Step 7 –

1.  Cbind subset of measurement\_combined that matches select feature
    label vector to subject\_combined

Step 8 –

1.  **Create 2nd tidy data set by grouping measurement\_combined by**
    1.  participantId
    2.  activityName

Step 9 -

1.  Calculate mean of each measurement variable in measurement\_combined

Step 10 –

1.  Quick spot checks to make sure summarize\_all() did the calculations
    correctly
