# 1
# Open RStudio, create a new R script, 
# and add appropriate comments 
# (purpose, author, date, etc.) at the top using #. 
# For the steps below, you can first try out 
# your code in the console, but be sure to put 
# everything in your R script with comment lines 
# saying what you are doing at each step.


# This is an R script for class #3 homework

# author: Sean D. Gallaher
# date: 19-JUN-2024

####################################################################

# 2
# Paste in the following line:
fpkms <- read.table ("Rbootcamp/class3.data_for_homework.txt")

# Run that line to load an RNAseq dataset into a new 
# data frame called fpkms. Next, in the console, 
# type the command to view the top ten lines of your 
# new data frame. What is wrong with the way the data 
# has been placed in your fpkms data frame? 
# Modify your Rscript to fix the problem and re-run the line. 
# Did that fix the problem?




####################################################################

# 3 
# In the console, type the command to view the column 
# headings of your fpkms data frame. You should find 
# that the columns are not in a logical order. Add a 
# line to your R script to change the order of the 
# columns to something more logical, and run it. 
# Check if you fixed the problem.



####################################################################

# 4
# The core facility that processed the samples has just 
# informed you that the libraries for the 4 h time points 
# failed their quality control. Add a line to your R script 
# to remove the 4 h time points and run it. Check the number 
# of rows and columns in your data frame before you run that 
# line and again after. Did the number of columns change 
# as you expected? 



####################################################################

# 5
# Add a line to your R script to sort the fpkms data frame 
# in descending order based on the FPKMs of the 
# experimental_2h time point. Run it and check to see 
# if it did as you intended. What is the highest expressed 
# gene ID in experimental 2 h?



####################################################################

# 6
# Add a line to your R script to import 
# Rbootcamp/class3.Cr_gene_symbols into a new data frame 
# called chlamyGenes and run it. Note that this file is 
# comma-delimited. Take a look at chlamyGenes data frame 
# with View(). Do you have one column of gene IDs and a 
# second column of gene symbols? If not modify your code as 
# needed and re-import the file.



####################################################################

# 7
# Combine your fpkms data frame with your chlamyAnnos data frame. 
# Make sure to keep all FPKMs but not all chamyAnnos.

