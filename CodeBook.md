Tidy data set description
The variables in the tidy data
Tidy data contains 180 rows and 88 columns. Each row has averaged variables for each subject and each activity.

Only all the variables estimated from mean and standard deviation in the tidy set were kept.
mean(): Mean value
std(): Standard deviation

The data were averaged based on subject and activity group.
Subject column is numbered sequentially from 1 to 30. Activity column has 6 types as listed below.

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING


The tidy data contains 180 entries for the subject and activity variable.

 [1] "Subject"                                           "Activity"                                         
 [3] "TimeBodyAccelerometerMean()-X"                     "TimeBodyAccelerometerMean()-Y"                    
 [5] "TimeBodyAccelerometerMean()-Z"                     "TimeBodyAccelerometerSTD()-X"                     
 [7] "TimeBodyAccelerometerSTD()-Y"                      "TimeBodyAccelerometerSTD()-Z"                     
 [9] "TimeGravityAccelerometerMean()-X"                  "TimeGravityAccelerometerMean()-Y"                 
[11] "TimeGravityAccelerometerMean()-Z"                  "TimeGravityAccelerometerSTD()-X"                  
[13] "TimeGravityAccelerometerSTD()-Y"                   "TimeGravityAccelerometerSTD()-Z"                  
[15] "TimeBodyAccelerometerJerkMean()-X"                 "TimeBodyAccelerometerJerkMean()-Y"                
[17] "TimeBodyAccelerometerJerkMean()-Z"                 "TimeBodyAccelerometerJerkSTD()-X"                 
[19] "TimeBodyAccelerometerJerkSTD()-Y"                  "TimeBodyAccelerometerJerkSTD()-Z"                 
[21] "TimeBodyGyroscopeMean()-X"                         "TimeBodyGyroscopeMean()-Y"                        
[23] "TimeBodyGyroscopeMean()-Z"                         "TimeBodyGyroscopeSTD()-X"                         
[25] "TimeBodyGyroscopeSTD()-Y"                          "TimeBodyGyroscopeSTD()-Z"                         
[27] "TimeBodyGyroscopeJerkMean()-X"                     "TimeBodyGyroscopeJerkMean()-Y"                    
[29] "TimeBodyGyroscopeJerkMean()-Z"                     "TimeBodyGyroscopeJerkSTD()-X"                     
[31] "TimeBodyGyroscopeJerkSTD()-Y"                      "TimeBodyGyroscopeJerkSTD()-Z"                     
[33] "TimeBodyAccelerometerMagnitudeMean()"              "TimeBodyAccelerometerMagnitudeSTD()"              
[35] "TimeGravityAccelerometerMagnitudeMean()"           "TimeGravityAccelerometerMagnitudeSTD()"           
[37] "TimeBodyAccelerometerJerkMagnitudeMean()"          "TimeBodyAccelerometerJerkMagnitudeSTD()"          
[39] "TimeBodyGyroscopeMagnitudeMean()"                  "TimeBodyGyroscopeMagnitudeSTD()"                  
[41] "TimeBodyGyroscopeJerkMagnitudeMean()"              "TimeBodyGyroscopeJerkMagnitudeSTD()"              
[43] "FrequencyBodyAccelerometerMean()-X"                "FrequencyBodyAccelerometerMean()-Y"               
[45] "FrequencyBodyAccelerometerMean()-Z"                "FrequencyBodyAccelerometerSTD()-X"                
[47] "FrequencyBodyAccelerometerSTD()-Y"                 "FrequencyBodyAccelerometerSTD()-Z"                
[49] "FrequencyBodyAccelerometerMeanFreq()-X"            "FrequencyBodyAccelerometerMeanFreq()-Y"           
[51] "FrequencyBodyAccelerometerMeanFreq()-Z"            "FrequencyBodyAccelerometerJerkMean()-X"           
[53] "FrequencyBodyAccelerometerJerkMean()-Y"            "FrequencyBodyAccelerometerJerkMean()-Z"           
[55] "FrequencyBodyAccelerometerJerkSTD()-X"             "FrequencyBodyAccelerometerJerkSTD()-Y"            
[57] "FrequencyBodyAccelerometerJerkSTD()-Z"             "FrequencyBodyAccelerometerJerkMeanFreq()-X"       
[59] "FrequencyBodyAccelerometerJerkMeanFreq()-Y"        "FrequencyBodyAccelerometerJerkMeanFreq()-Z"       
[61] "FrequencyBodyGyroscopeMean()-X"                    "FrequencyBodyGyroscopeMean()-Y"                   
[63] "FrequencyBodyGyroscopeMean()-Z"                    "FrequencyBodyGyroscopeSTD()-X"                    
[65] "FrequencyBodyGyroscopeSTD()-Y"                     "FrequencyBodyGyroscopeSTD()-Z"                    
[67] "FrequencyBodyGyroscopeMeanFreq()-X"                "FrequencyBodyGyroscopeMeanFreq()-Y"               
[69] "FrequencyBodyGyroscopeMeanFreq()-Z"                "FrequencyBodyAccelerometerMagnitudeMean()"        
[71] "FrequencyBodyAccelerometerMagnitudeSTD()"          "FrequencyBodyAccelerometerMagnitudeMeanFreq()"    
[73] "FrequencyBodyAccelerometerJerkMagnitudeMean()"     "FrequencyBodyAccelerometerJerkMagnitudeSTD()"     
[75] "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()" "FrequencyBodyGyroscopeMagnitudeMean()"            
[77] "FrequencyBodyGyroscopeMagnitudeSTD()"              "FrequencyBodyGyroscopeMagnitudeMeanFreq()"        
[79] "FrequencyBodyGyroscopeJerkMagnitudeMean()"         "FrequencyBodyGyroscopeJerkMagnitudeSTD()"         
[81] "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"     "Angle(TimeBodyAccelerometerMean,Gravity)"         
[83] "Angle(TimeBodyAccelerometerJerkMean),GravityMean)" "Angle(TimeBodyGyroscopeMean,GravityMean)"         
[85] "Angle(TimeBodyGyroscopeJerkMean,GravityMean)"      "Angle(X,GravityMean)"                             
[87] "Angle(Y,GravityMean)"                              "Angle(Z,GravityMean)"  


Variable units
Activity variable is factor type. Subject variable is integer type. All the other variables are numeric type.
