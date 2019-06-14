{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf200
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww15600\viewh14300\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 ---\
title: "README"\
author: "Frances C Yan"\
date: "6/14/2019"\
output: html_document\
---\
\
```\{r setup, include=FALSE\}\
knitr::opts_chunk$set(echo = TRUE)\
```\
\
The R script that cleaned and summarized activity measures is organized in 10 steps.  There are intermediate steps in between and script execution follows the 10-step sequence.  Below gives an overall approach in completing this project.  Next section describes the 10-step sequence and highlights final steps that met project requirements.\
\
###Overall approach to subject_combined\
#### in combining and tidying the activity measure data\
\
    1.	Combine train and test subject data\
    2.	Join activity number (y_data) to get activity labels (WALKING, STANDING, etc.)\
    3.	Combine train and test activity measurement (x_data) data\
    4.	Tidy all feature labels into a vector\
    5.	Extract and tidy mean and std only feature labels into another vector\
    6.	Assign all feature label vector from step 4 to x_data\
    7.	Cbind in order:\
      i)  Cbind y_data to subject data\
      ii) Subset of x_data that has column labels matching to the mean and std only feature labels from step 5,\
      then cbind to subject data\
      \
    After this process, subject_combined data frame has below columns:\
\
    1) Subject/participantId\
    2) activityName (WALKING, STANDING, etc.)\
    3) 79 activity measures (time_BodyAcc_mean_X, etc.)\
    \
###Overall approach to AvgSummary\
####Independent 2nd dataset\
\
    1. Grouping subject_combined dataset from Step 7 by\
    \
    a) participantId and\
    b) activityName\
    \
    2. then calculating the mean for each of the measure at participantId and activityName level\
\
###10 Step Sequence\
\
Step 0.5\
\
1. Download project data zip file to local directory\
\
Step 1 \'96 <mark>Merge train and test subject data</mark>\
\
1. Read in subject_train\
2. Read in subject_test\
3. rbind to create subject_combined  \
(Note column names are not assigned yet)\
\
Step 1.5 \'96 <mark>Merge train and test activity no (y_data)</mark>\
\
1. Read in y_train\
2. Read in y_test\
3. cbind to create activity_combined  \
(activityNo column name assigned)\
\
Step 1.6 \'96 activity labels\
\
1. Read in activity labels\
\
Step 1.7 \'96 <mark>Use descriptive activity names to name activities</mark>\
\
1. Join activity no to activity labels to get the corresponding activity names\
\
Step 2 \'96 <mark>merge train and test activity measurements (x_data)</mark>\
\
1. Read in x_train activity measurements\
2. Read in x_test activity measurements\
3. Rbind to create measurement_combined\
\
Step 3 \'96 feature labels\
\
1. Read in feature labels\
\
Step 4 \'96 \
\
1. Tidy all feature labels into a vector\
\
Step 5 \'96 <mark>Appropriately label dataset with descriptive variable names</mark>\
\
1. Assign all feature label vector to measurement_combined\
\
Step 6 \'96\
\
1. <mark>Extract only mean & std dev for each variable</mark>\
2. Tidy select feature labels into another vector\
\
Step 6.5 \'96\
\
1. Cbind activityName to subject_combined\
\
Step 7 \'96\
\
1. Cbind subset of measurement_combined that matches select feature label vector to subject_combined\
\
Step 8 \'96\
\
1. <mark>Create 2nd tidy data set by grouping measurement_combined by </mark>\
    i) participantId\
    ii) activityName\
\
Step 9 -\
\
1. Calculate mean of each measurement variable in measurement_combined\
\
Step 10 \'96\
\
1. Quick spot checks to make sure summarize_all() did the calculations correctly\
}