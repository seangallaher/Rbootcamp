# Welcome to R Bootcamp Class 2

# This is an example of an R script. It lets you
# save the steps in your analysis so you can
# repeat them and share them. 

# <- The pound sign "#" indicates that something is a comment. 
# You can write anything to the right of a "#" sign, and 
# the computer will ignore it. This is a great way to leave
# notes to yourself about what you are doing. It makes
# your R-code more understandable to others.

# It is good practice to make lots of comments
# including who wrote the script, and what
# it is for.

# This is an R script to teach the basics of R.
# Author: Sean D. Gallaher
# Date: 28-MAY-2024


# load some data and put it into a matrix
# called myDataMatrix

myDataMatrix<-matrix(c(
  20.8064,19.9373,20.0828,
  10.1774,10.8954,11.2877,
  55.6543,53.4541,55.9686,
  41.6909,37.7165,42.1186,
  2.02134,1.63312,1.78729,
  42.39734,43.53937,43.60435,
  1.66575,1.56504,1.71047,
  2.34817,3.18561,3.89124,
  7.31138,8.31815,6.91516,
  5.53889,8.55316,8.84495,
  45.3412,44.5704,46.9594,
  51.8027,50.8107,56.0831,
  13.8186,11.5809,11.0955,
  5.21723,4.43042,5.6549,
  46.6739,53.0526,41.5326,
  41.1259,32.3729,27.1338,
  9.43617,11.8926,10.3493,
  19.3051,17.3351,16.6333,
  19.3054,20.6907,20.6508,
  15.0914,14.4205,16.4572),nrow=10)

# Find the maximum values of myDataMatrix

max(myDataMatrix)


# R comes with many functions built in, 
# but you can also add new functions.
# A set of third-party functions that you add to
# R is called a "library". To use those functions
# you need to (re)load the library every 
# time you open up R.
# For example, the library called "ggplot2"
# is a suite of tools for making more
# sophisticated figures than the base functions. 
# You load it with the library() function:

library(ggplot2)


# If the library you want has never been installed,
# you have to install first (once) before you 
# load it (every time). Use this to install
# a library called pheatmap:

install.packages("pheatmap")



# Often, you will need to import your data into
# R in order to process it. One way is to "read"
# in a text file of data. There is a text file
# in the Rbootcamp folder
# that contains sample RNA-Seq data. 
# To load it into your R environment, 
# use the read.delim() function like so:

myData <- read.delim(file = "Rbootcamp/class2.sample_data.txt")

# Take a look at the data. It contains 
# gene expression values for 10 genes
# for three experimental and 
# three control samples.

myData

# Let's make a heatmap of these values. 
# The function for that is called
# heatmap(). It requires the data to 
# be formatted as a "matrix", which
# is a way of storing numbers in 2-D
# (i.e. with rows and columns).
# So first we convert myData to a matrix
# with a function called as.matrix()

myDataMat <- as.matrix(myData)

# Now we can plot these data as a heatmap:

heatmap(myDataMat)

# Great job! Now you are using R!
# Take a look at the data. It contains 
# gene expression values for 10 genes
# for three experimental and 
# three control samples.

myData

# Let's make a heatmap of these values. 
# The function for that is called
# heatmap(). It requires the data to 
# be formatted as a "matrix", which
# is a way of storing numbers in 2-D
# (i.e. with rows and columns).
# So first we convert myData to a matrix
# with a function called as.matrix()

myDataMat <- as.matrix(myData)

# Now we can plot these data as a heatmap:

heatmap(myDataMat)

# I prefer pheatmap to the basic heatmap function
# that comes with R. It is not installed by
# default, but we can install it with 
# install.packages()

install.packages("pheatmap")

# Once it is installed, we need to
# "load" the pheatmap library:

library(pheatmap)

# Now take a look at the default
# heatmap that you can make with pheatmap:

pheatmap(myDataMat)

# Not bad. But can customize the 
# plot. You do this with 
# arguments, which you put in the 
# parentheses, separated by commas.
# The argument to add a main title
# is called "main". Let's try it:

pheatmap(myDataMat, main = "My RNA-Seq Experiment")

# I don't want to reorder the columns.
# Let's turn that off. That argument
# is called "cluster_cols". We want
# to make that false.

pheatmap(myDataMat, main = "My RNA-Seq Experiment", cluster_cols = FALSE)

# Better, but I am not crazy about these colors,
# but we can change them with "color" argument.

pheatmap(myDataMat, main = "My RNA-Seq Experiment", cluster_cols = FALSE, color = heat.colors(256))

# When we have a lot of arguments, we can put
# them on separate lines. This makes it more
# readable. Here is an example:

pheatmap(myDataMat, 
         main = "My RNA-Seq Experiment", 
         cluster_cols = FALSE,
         color = heat.colors(256))


# I'm not crazy about those colors. Let's try another:

pheatmap(myDataMat, 
         main = "My RNA-Seq Experiment", 
         cluster_cols = FALSE,
         color = cm.colors(256))

# I'm not crazy about that either. Let's add a library  called RColorBrewer to give us more options:

library("RColorBrewer")

# Now we will use RColorBrewer to choose a better color scale:

pheatmap(myDataMat, 
         main = "My RNA-Seq Experiment", 
         cluster_cols = FALSE,
         brewer.pal("Blues",n=9))


# If we are happy with our heatmap, we can 
# it as a PDF or other image format. In
# Rstudio, look for the "Export" button
# just above your plot.

 
