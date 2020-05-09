CodeBook
========

### The original data was transformed by:

1.  Merging the training and the test sets to create one data set.
2.  Extracting only the measurements on the mean and standard deviation
    for each measurement.
3.  Using descriptive activity names to name the activities in the data
    set
4.  Appropriately labeling the data set with descriptive activity names.
5.  Creating a second, independent tidy data set with the average of
    each variable for each activity and each subject.

Data
----

The `tidy.txt` data file is a text file, containing space-separated
values.

The first row contains the names of the variables, which are listed and
described in the Variables section, and the following rows contain the
values of these variables.

-   `x_train`, `y_train`, `x_test`, `y_test`,`subject_train` and
    `subject_test` contain the data from the downloaded files.
-   `x_data`, `y_data` and `'''`subject\_data\` merge the previous
    datasets to further analysis.
-   `features` contains the correct names for the x\_data dataset, which
    are applied to the column names stored in

Variables
---------

### Identifiers

-   `subject` Subject identifier, integer, ranges from 1 to 30.

-   `activity` Activity identifier, string with 6 possible values:
-   `WALKING`: subject was walking
-   `WALKING_UPSTAIRS`: subject was walking upstairs
-   `WALKING_DOWNSTAIRS`: subject was walking downstairs
-   `SITTING`: subject was sitting
-   `STANDING`: subject was standing
-   `LAYING`: subject was laying

##### Time-domain signals

-   `timeDomainBodyAccelerometerMeanX`,
    `timeDomainBodyAccelerometerMeanY`,
    `timeDomainBodyAccelerometerMeanZ`: Average time-domain body
    acceleration in the X, Y and Z directions

-   `timeDomainBodyAccelerometerStandardDeviationX`,
    `timeDomainBodyAccelerometerStandardDeviationY`,
    `timeDomainBodyAccelerometerStandardDeviationZ`: Standard deviation
    of the time-domain body acceleration in the X, Y and Z directions

-   `timeDomainGravityAccelerometerMeanX`,
    `timeDomainGravityAccelerometerMeanY`,
    `timeDomainGravityAccelerometerMeanZ`: Average time-domain gravity
    acceleration in the X, Y and Z directions

-   `timeDomainGravityAccelerometerStandardDeviationX`,
    `timeDomainGravityAccelerometerStandardDeviationY`,
    `timeDomainGravityAccelerometerStandardDeviationZ`: Standard
    deviation of the time-domain gravity acceleration in the X, Y and Z
    directions

-   `timeDomainBodyAccelerometerJerkMeanX`,
    `timeDomainBodyAccelerometerJerkMeanY`,
    `timeDomainBodyAccelerometerJerkMeanZ`: Average time-domain body
    acceleration jerk (derivation of the acceleration in time) in the X,
    Y and Z directions

-   `timeDomainBodyAccelerometerJerkStandardDeviationX`,
    `timeDomainBodyAccelerometerJerkStandardDeviationY`,
    `timeDomainBodyAccelerometerJerkStandardDeviationZ`: Standard
    deviation of the time-domain body acceleration jerk (derivation of
    the acceleration in time) in the X, Y and Z directions

-   `timeDomainBodyGyroscopeMeanX`, `timeDomainBodyGyroscopeMeanY`,
    `timeDomainBodyGyroscopeMeanZ`: Average time-domain body angular
    velocity in the X, Y and Z directions

-   `timeDomainBodyGyroscopeStandardDeviationX`,
    `timeDomainBodyGyroscopeStandardDeviationY`,
    `timeDomainBodyGyroscopeStandardDeviationZ`: Standard deviation of
    the time-domain body angular velocity in the X, Y and Z directions

-   `timeDomainBodyGyroscopeJerkMeanX`,
    `timeDomainBodyGyroscopeJerkMeanY`,
    `timeDomainBodyGyroscopeJerkMeanZ`: Average time-domain body angular
    velocity jerk (derivation of the angular velocity in time) in the X,
    Y and Z directions

-   `timeDomainBodyGyroscopeJerkStandardDeviationX`,
    `timeDomainBodyGyroscopeJerkStandardDeviationY`,
    `timeDomainBodyGyroscopeJerkStandardDeviationZ`: Standard deviation
    of the time-domain body angular velocity jerk (derivation of the
    angular velocity in time) in the X, Y and Z directions

-   `timeDomainBodyAccelerometerMagnitudeMean`,`timeDomainBodyAccelerometerMagnitudeStandardDeviation`:
    Average and standard deviation of the time-domain magnitude of body
    acceleration

-   `timeDomainGravityAccelerometerMagnitudeMean`,
    `timeDomainGravityAccelerometerMagnitudeStandardDeviation`: Average
    and standard deviation of the time-domain magnitude of gravity
    acceleration

-   `timeDomainBodyAccelerometerJerkMagnitudeMean`,
    `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`: Average
    and standard deviation of the time-domain magnitude of body
    acceleration jerk (derivation of the acceleration in time)

-   `timeDomainBodyGyroscopeMagnitudeMean`,
    `timeDomainBodyGyroscopeMagnitudeStandardDeviation`: Average and
    standard deviation of the time-domain magnitude of body angular
    velocity

-   `timeDomainBodyGyroscopeJerkMagnitudeMean`,
    `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`: Average and
    standard deviation of the time-domain magnitude of body angular
    velocity jerk (derivation of the angular velocity in time)

##### Frequency-domain signals

-   `frequencyDomainBodyAccelerometerMeanX`,
    `frequencyDomainBodyAccelerometerMeanY`,
    `frequencyDomainBodyAccelerometerMeanZ`: Average frequency-domain
    body acceleration in the X, Y and Z directions

-   `frequencyDomainBodyAccelerometerStandardDeviationX`,
    `frequencyDomainBodyAccelerometerStandardDeviationY`,
    `frequencyDomainBodyAccelerometerStandardDeviationZ`: Standard
    deviation of the frequency-domain body acceleration in the X, Y and
    Z directions

-   `frequencyDomainBodyAccelerometerMeanFrequencyX`,
    `frequencyDomainBodyAccelerometerMeanFrequencyY`,
    `frequencyDomainBodyAccelerometerMeanFrequencyZ`: Weighted average
    of the frequency components of the frequency-domain body
    acceleration in the X, Y and Z directions

-   `frequencyDomainBodyAccelerometerJerkMeanX`,
    `frequencyDomainBodyAccelerometerJerkMeanY`,
    `frequencyDomainBodyAccelerometerJerkMeanZ`: Average
    frequency-domain body acceleration jerk (derivation of the
    acceleration in time) in the X, Y and Z directions

-   `frequencyDomainBodyAccelerometerJerkStandardDeviationX`,
    `frequencyDomainBodyAccelerometerJerkStandardDeviationY`,
    `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`: Standard
    deviation of the frequency-domain body acceleration jerk (derivation
    of the acceleration in time) in the X, Y and Z directions

-   `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`,
    `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`,
    `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`: Weighted
    average of the frequency components of the frequency-domain body
    acceleration jerk (derivation of the acceleration in time) in the X,
    Y and Z directions

-   `frequencyDomainBodyGyroscopeMeanX`,
    `frequencyDomainBodyGyroscopeMeanY`,
    `frequencyDomainBodyGyroscopeMeanZ`: Average frequency-domain body
    angular velocity in the X, Y and Z directions

-   `frequencyDomainBodyGyroscopeStandardDeviationX`,
    `frequencyDomainBodyGyroscopeStandardDeviationY`,
    `frequencyDomainBodyGyroscopeStandardDeviationZ`: Standard deviation
    of the frequency-domain body angular velocity in the X, Y and Z
    directions

-   `frequencyDomainBodyGyroscopeMeanFrequencyX`,
    `frequencyDomainBodyGyroscopeMeanFrequencyY`,
    `frequencyDomainBodyGyroscopeMeanFrequencyZ`: Weighted average of
    the frequency components of the frequency-domain body angular
    velocity in the X, Y and Z directions

-   `frequencyDomainBodyAccelerometerMagnitudeMean`,
    `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`,
    `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`: Average,
    standard deviation, and weighted average of the frequency components
    of the frequency-domain magnitude of body acceleration

-   `frequencyDomainBodyAccelerometerJerkMagnitudeMean`,`frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`,
    `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`:
    Average, standard deviation, and weighted average of the frequency
    components of the frequency-domain magnitude of body acceleration
    jerk (derivation of the acceleration in time)

-   `frequencyDomainBodyGyroscopeMagnitudeMean`,
    `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`,
    `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`: Average,
    standard deviation, and weighted average of the frequency components
    of the frequency-domain magnitude of body angular velocity

-   `frequencyDomainBodyGyroscopeJerkMagnitudeMean`,
    `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`,
    `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`: Average,
    standard deviation, and weighted average of the frequency components
    of the frequency-domain magnitude of body angular velocity jerk
    (derivation of the angular velocity in time)

Step-by-Step
------------

The link to the zip file source:
<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>

The following transformations were applied to the source data:

1.  The training and test sets were merged to create one data set.
2.  The measurements on the mean and standard deviation (i.e. signals
    containing the strings mean and std) were extracted for each
    measurement, and the others were discarded.
3.  The activity identifiers were replaced with descriptive activity
    names.
4.  The variable names were replaced with descriptive variable names.
5.  From the data set in step 4, the final data set was created with the
    average of each variable for each activity and each subject.

The collection of the source data and the transformations listed above
were implemented by the `run_analysis.R` R script (see `README.md` file
for usage instructions).
