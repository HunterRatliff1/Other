# Required packages
require(ggplot2)
require(dplyr)

# Define the data.frame
data_frame(
  names=c(rep("A", 80), 
          rep("B", 50), 
          rep("C", 70)),
  value=c(sample(2:5,  80, replace=T),
          sample(4:10, 50, replace=T), 
          sample(1:7,  70, replace=T))) %>% 
  
  # ggplot
  ggplot(aes(x=names, y=value, fill=names)) + 
  geom_jitter() + # illustrates the underlying distribution
  geom_violin(color="white", fill="grey", alpha=0.7) + 
  geom_boxplot(alpha=0.3) # overlay a boxplot for comparison 