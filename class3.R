# This is my R script for class 3 of R boot camp
# Date: 12-JUN-2024
# Author: Sean D. Gallaher


# set working directory
setwd("~/Desktop/R_Boot_Camp/")

# load a data file
# use header = TRUE to indicate that the first row should by used as column headings
# use sep = "\t" to indicate that the columns of data are separated by tabs 
myData<-read.table("Rbootcamp/class2.sample_data.txt", header = TRUE, sep = "\t")

########################################

# How do we view the data in myData?
# To see all of the data frame (up to 1000 rows)
myData

# To see the data in an excel-like grid in RStudio
View(myData)

# To see the top lines (6 lines by default) 
head(myData)

# To see the top 3 lines
head(myData, n = 3)

# To see the last lines (6 lines by default)
tail(myData)


#####################################

# see column names
names(myData)

# see row names
row.names(myData)

# see only the third column name
names(myData)[3]

###################################

# View just one column by index
myData[,2]

# View just one column  by name
# use the $ symbol to separate 
# data frame name and column name
myData$exp2

####################################

# transpose a data frame 
# (switch columns and rows)
# with t()

myDataTransposed<-t(myData)

# see how the number of columns and rows
# are switched
dim(myData)
dim(myDataTransposed)

##################################

# to keep only some columns 
# (i.e. omit the other columns)

# keep columns 1 - 3
myDataExpOnly<-myData[,c(1:3)]

# keep columns 4, 5, and 6
myDataConOnly<-myData[,c(4,5,6)]

#################################


# to re-arrange the columns
# to put columns 4 - 6 first
# and then columns 1 - 3 next
myDataRearranged<- myData[,c(4:6,1:3)]


##################################

# to sort based on the values in a column

# this returns a vector or the order 
# of rows in increasing order based
# on column named exp1
order(myData$exp1)

# we can re-order the rows based
# on the vector produced by order()
myDataOrdered<-myData[order(myData$exp1),]

# what if we want descending order
myDataOrdered<-myData[order(myData$exp1, decreasing = TRUE),]


###############################

# to bind (join) the columns of 
# two data frames together
# must have same rows 

myDataRebound<-cbind(myDataConOnly, myDataExpOnly)

# rbind does the same for 
# binding columns

################################


# to merge two data frames
# here we have a df of FPKMs
# and a second one of annotations

fpkms<-read.table("Rbootcamp/class3.RNAseq_data.txt", header = TRUE, sep = "\t")
annos<-read.table("Rbootcamp/class3.annotations.txt", header = TRUE, sep = "\t")

fpkmsAnnotated<-merge(annos, fpkms, by.x = "Cre_GID", by.y = "GID", all.y = TRUE)



