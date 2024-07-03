# This is the script for class 6 of the R boot camp
# author: 
# date:

# load needed libraries



# set working directory


# load data with read.table()


# load data with readxl


# convert pcaData to tibble


# load data in class6.data.RData


# pivot longer

# convert pcaData DF to tibble

# separate_wider_delim

# make PCA plot
ggplot(pcaDataTib, aes(PC1, PC2, fill=condition, shape = strain)) +
  geom_point(size=3,color="black") +
  guides(fill = guide_legend(override.aes=  list(shape=22)))+
  scale_fill_manual(values = c("gray20","green2", "dodgerblue","yellow"),
          name ="conditions",
          breaks = c("replete","plusNi","minusCu","minusFe"),
          labels = c("replete", "+Ni", "-Cu", "-Fe"))+
  scale_shape_manual(values = c(24,21,22), 
          name = "strain",
          breaks = c("strain1","strain2","strain3"),
          labels = c("strain 1","strain 2", "strain 3"))+
  theme(panel.background = element_rect(fill="white", color="black"),
        panel.grid = element_blank(),
        legend.key = element_rect(fill = NULL, linetype = "blank"))



