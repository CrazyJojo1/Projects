getwd()
m <- read.csv("Section6-Homework-Data.csv")
m
#understand the data
str(m)
head(m)
tail(m)
summary(m)
#filter the data

rectify <- (m$Genre=="action") | (m$Genre=="adventure") |
  (m$Genre=="animation") | (m$Genre=="comedy") |
  (m$Genre=="drama")
rectify1 <- (m$Studio=="Buena Vista Studios") |
  (m$Studio=="Fox") |(m$Studio=="Paramount Pictures") |
  (m$Studio=="Sony") |(m$Studio=="Universal") |
  (m$Studio=="WB")
m <- m[rectify&rectify1,]
m
#understand rectified data frma
str(m)

plot <- ggplot(data=m, aes(x=Genre,y=Gross...US))
plot <- plot + geom_jitter() + geom_boxplot(alpha=0.7)  
plot
#mapping and getting rid of boxplot outliers
plot <- plot + geom_jitter(aes(color=Studio,
                               size=Budget...mill.)) +
  geom_boxplot(alpha=0.7,
               outlier.color=NA) +
  facet_grid(Studio~.,scales="free")
plot
#add title, labels and change font size for all
plot <- plot +
  ggtitle("Domestic Gross % by Genre") +
 ylab("Gross % US") + #xlab remains the same 
theme(text=element_text(family="Comic Sans MS"))

#print to see the changes
plot

#change the color
plot <- plot +
  ggtitle("Domestic Gross % by Genre") +
  ylab("Gross % US") + #xlab remains the same 
  theme(
    text=element_text(family="Comic Sans MS"),
    axis.title.x = element_text(color="Blue",size=20),
    axis.title.y = element_text(color="Blue",size=20),
    axis.text.x = element_text(size=10),
    axis.text.y = element_text(size=10),
    plot.title = element_text(size=30)
    )
#change the label for size
plot$labels$size = "Budget $ M"
plot

#delete the outliers formed from the boxplot functions
