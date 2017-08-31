How the script works
<br/>
1. The first step of this code is to download the Samsung data to my working directory and unzip the package with "unzip" function. Use "read.table" function to read all the dataset needed in the assginment into R. <br/>
2. The second step is to merge the data. Merge the testing dataset and t#raining set by "rbind" function. Also merge the subject and activity data by "cbind" function. Name the varibles in the dataset with the "features" dataset.
3. Use "grep" function and regular expression to extract the columns with varible name including "mean" and "std". An index was generated into "mean_std", which can be used to subset columns that only measures mean and standard error in the dataset from step 2.
4. Replace the activity number by descriptive names by using "mutate" function
5. Label the virable names in a readable way. Using "sub" function and regular expression to substitute charactor in the varible names. 
6. From the dataset in step 5, set "activity" and "subject" as group by "group_by" function. Followed by "summarize_all" function to calculate mean value of all varibles. And the results were stored in an object named "dataset_average.R"
