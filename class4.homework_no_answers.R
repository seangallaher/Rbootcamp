# This is an Rscript for the class #4 homework

# author: Sean D. Gallaher
# date: 21-JUN-2024

# 1.
# Open RStudio and check to see what directory (i.e. folder)
# is your current working directory. On your computer, make 
# a new folder on your desktop called "Rbootcamp". 
# In RStudio, change your working directory to the new 
# Rbootcamp folder on your desktop. Check your working 
# directory again. Did it work?



####################################################

# 2.
# Paste the following line into the console and hit enter:

myData<-data.frame( "col_1" = paste("row",1:5,"col1", sep ="_"),"col_2" = paste("row",1:5,"col2", sep = "_"))

# Next, export the myData object to your working directory 
# as a tab-delimited text file. Call it "myData.tsv". 
# On your computer, try opening the resulting file with 
# your favorite spreadsheet program (Excel, Numbers, Sheets, etc.). 
# Does it look the way it did in RStudio? 
# If not, change your R code to make it export the file as you intend.

####################################################

# 3.

# Look up the names of a pleasing shade of cyan and a 
# pleasing shade of purple in the pdf file you can get 
# from the class Google Drive folder. In RStudio, 
# create an Rscript in which you use colorRampPalette 
# to make a 3-color gradient that goes from your shade 
# of cyan to black to your shade of purple with 30 levels. 
# The output will be a vector of colors. Save that vector 
# as myCyanBlackPupleVector. How is the color information 
# in your gradient stored?



####################################################

# 4.
# Copy the attached text file (class2.sample_data.txt) 
# to your Rbootcamp folder on your desktop. 
# Add a line to your RScript to import the file into 
# an object called fpkms. With your RScript, load the 
# pheatmap library.
# Make a heatmap using the fpkms object. 
# Change your script as needed to:
# - add a title to the heatmap
# - do not reorder the rows
# - remove column names
# - change the border color to gray90
# - use myCyanBlackPurpleVector as your color scale
# - add labels to each square with their numeric value
# - change the font size to 15

