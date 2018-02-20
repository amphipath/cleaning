# cleaning

:::::::::::::::::::
prerequisites
:::::::::::::::::::

make sure the following files are in the working directory before executing the code:
X_test.txt
X_train.txt
y_test.txt
y_train.txt
subject_test.txt
subject_train.txt
features.txt
activity_labels.txt

:::::::::::::::::::
how to use:
:::::::::::::::::::

copy the entire body of code in run_analysis.R
paste in console
as long as the prerequisite data files are there, it should produce the following two objects:

`datatable` // the full, tidied data set of the means and st deviations of the collected data

`uniques` // the averaged means and st deviations for each individual activity and collected statistic

:::::::::::::::::::
what the code does:
:::::::::::::::::::

1. first reads all the files into memory. it stores the table X_test.txt into the object X_test, etc.

2. creates an object meanstd which is a boolean vector that allows me to filter the column names by whether they contain "mean()" or "std()" making sure that the features that contained things like GravityMean were excluded

3. subsets the test and training sets then combines them into a data frame.

4. does a 1:1 swap with activity labels which are originally a factor with number labels with descriptive character labels that detail what the participants are actually doing

5. combines everything into a main clean raw dataset in the object `datatable`

6. tidies up the names of variables in datatable

7. creates the `uniques` object that contains the summarised averages of the mean and standard deviations of measured datasets

8. renames the column names of uniques to reflect accurately that these are now averages rather than raw data

