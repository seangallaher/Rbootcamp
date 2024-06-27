# This is an R script for the class 5 homework.

# author: 
# date: 

# set your working directory here:



# load needed libraries here: 


# Note, we will be using the eulerr library below.



# If using RStudio on your computer, get 
# class5.homework_data.RData from Sean's email
# or the class Google Drive link
# and place it somewhere you can find it. 
# If using Berkeley's DataHub, the file will
# be loaded automatically.

############################################ 
# 1.
# Add a line here to import the objects
# in class5.homework_data.RData:



# You should now have a data frame called dates
# with the month (column 1), day (column 2), 
# and year (column 3) for a series of dates
# in May, June and July. In column 4, combine
# the month, day, and year to make a single 
# text string in the format of 5/10/2024:




# Replace the numeric values for the months
# with three letter versions. I.e. 
# 5 => MAY
# 6 => JUN
# 7 => JUL
# You will need to use the function we
# learned in class separately for 
# each month (i.e. three times total).




# Next, combine numeric day, text month,
# and numeric year and put that into 
# column 5 using the format of 03-MAY-2024:


# Check to make sure your edits worked as intended.


############################################
# 2.
# After loading class5.homework_data.RData,
# your environment should contain
# three vectors of FPKM values called
# fpkms_sample1, fpkms_sample2, fpkms_sample3, etc.
# Put all five vectors into a list called
# fpkmList. Give each vector a name in the list
# such as sample1, sample2, sample3, etc.



# Next, in one line, calculate the mean FPKM value
# from each vector in fpkmList. Which sample has
# the highest mean FPKMs?


# Next, in one line, log10 transform all of the 
# FPKM values in fpkmList:


############################################
# 3.
# After loading class5.homework_data.RData,
# your environment should contain a list
# called degList. Make a Venn diagram with
# degList


# Next, make a Euler diagram with degList


# Customize your Euler diagram in the
# following ways:
# - add the number of members in each group (i.e. quantities)
# - remove the edge lines 
# - add "My Euler Diagram" as a main title
# - add a legend
# - change the fill colors to: 
#      #ff000050 for set 1 (pale red)
#      #0000ff50 for set 2 (pale blue)
#      #70007050 for the overlap (pale purple)


# How many values are in your overlap?

############################################
# 4. 
# Save your updated dates data frame,
# and fpkmList as a .RData file
# called class5.completed_homework.RData

